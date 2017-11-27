require 'tushare/util'

module Tushare
  module Stock
    # 投资参考数据接口
    module Reference
      extend Tushare::Util

      # 获取分配预案数据
      # Parameters
      # year:年份
      # start_page: 开始页数

      # returns
      # code:股票代码
      # name:股票名称
      # year:分配年份
      # report_date:公布日期
      # divi:分红金额（每10股）
      # shares:转增和送股数（每10股）
      def profit_data(year = Time.now.year, start_page = 0)
        doc_generator = lambda do |p|
          url = format(DP_163_URL, P_TYPE['http'], DOMAINS['163'],
                       PAGES['163dp'], year, p)
          Nokogiri.HTML(open(url))
        end
        row_finder = lambda do |doc|
          doc.css('div.fn_rp_list table > tr')
        end
        row_processor = lambda do |row|
          row.drop(1).map { |item| item.content.strip }
        end
        last_page_guard = lambda do |doc|
          last_element = doc.css('div.mod_pages > :last-child').first
          last_element.name == 'span'
        end
        get_data(0, DP_163_COLS, doc_generator, row_finder,
                 row_processor, last_page_guard)
      end

      # 获取业绩预告数据
      # Parameters
      # --------
      # year:int 年度 e.g:2014
      # quarter:int 季度 :1、2、3、4，只能输入这4个季度
      #    说明：由于是从网站获取的数据，需要一页页抓取，速度取决于您当前网络速度

      # Return
      # --------
      # DataFrame
      #     code,代码
      #     name,名称
      #     type,业绩变动类型【预增、预亏等】
      #     report_date,发布日期
      #     pre_eps,上年同期每股收益
      #     range,业绩变动范围
      def forecast_data(year, quarter)
        check_year(year)
        check_quarter(quarter)
        doc_generator = lambda do |p|
          url = format(FORECAST_URL, P_TYPE['http'], DOMAINS['vsf'],
                       PAGES['fd'], year, quarter, p, PAGE_NUM[1])
          Nokogiri.HTML(open(url), nil, 'gbk')
        end
        row_finder = lambda do |doc|
          doc.css('table.list_table > tr')
        end
        row_processor = lambda do |row|
          row.to_a.values_at(0, 1, 2, 3, 6, 7).map { |item| item.content.strip }
        end
        last_page_guard = lambda do |doc|
          next_page = doc.css('div.pages > a:last').css('a.nolink')
          !next_page.empty?
        end
        get_data(1, FORECAST_COLS, doc_generator, row_finder,
                 row_processor, last_page_guard)
      end

      # 获取限售股解禁数据
      # Parameters
      # --------
      # year:年份,默认为当前年
      # month:解禁月份，默认为当前月
      # retry_count : int, 默认 3
      #              如遇网络等问题重复执行的次数
      # pause : int, 默认 0
      #             重复请求数据过程中暂停的秒数，防止请求间隔时间太短出现的问题

      # Return
      # ------
      # DataFrame
      # code:股票代码
      # name:名称
      # date:解禁日期
      # count:解禁数量（万股）
      # ratio:占总盘比率
      def xsg_data(year = Time.now.year, month = Time.now.month)
        url = format(XSG_URL, P_TYPE['http'], DOMAINS['em'], PAGES['emxsg'], year,
                     month)
        lines = HTTParty.get(url).slice(3..-3)
        lines.split('","').map do |row|
          arr = row.split(',').values_at(1, 3, 4, 5, 6)
          arr[3] = (arr[3].to_f / 10_000).round(2)
          arr[4] = (arr[4].to_f * 100).round(2)
          object = {}
          XSG_COLS.each_with_index do |key, index|
            object[key] = arr[index]
          end
          object
        end
      end

      # 获取基金持股数据
      # Parameters
      # --------
      # year:年份e.g 2014
      # quarter:季度（只能输入1，2，3，4这个四个数字）

      # Return
      # ------
      # DataFrame
      # code:股票代码
      # name:名称
      # date:报告日期
      # nums:基金家数
      # nlast:与上期相比（增加或减少了）
      # count:基金持股数（万股）
      # clast:与上期相比
      # amount:基金持股市值
      # ratio:占流通盘比率
      def fund_holdings(year, quarter)
        check_year(year)
        check_quarter(quarter)
        start_date, end_date = QUARTS_DIC[quarter.to_s]
        start_date = format(start_date % (quarter == 1 && year - 1 || year))
        end_date = format(end_date % year)
        url_generator = lambda do |page|
          format(FUND_HOLDS_URL, P_TYPE['http'], DOMAINS['163'], PAGES['163fh'],
                 PAGES['163fh'], page, start_date, end_date, rand(5))
        end
        resp = HTTParty.get(url_generator.call(0))
        page_count = JSON.parse(resp)['pagecount']
        result = []
        1.upto(page_count) do |page|
          _write_console
          resp = HTTParty.get url_generator.call(page)
          data = JSON.parse(resp)['list']
          data.each do |datum|
            object = {}
            object['code'] = datum['SYMBOL']
            object['name'] = datum['SNAME']
            object['date'] = datum['REPORTDATE']
            object['nums'] = datum['SHULIANG']
            object['nlast'] = datum['SHULIANGBIJIAO']
            object['count'] = (datum['GUSHU'].to_f / 10_000).round(2)
            object['clast'] = (datum['GUSHUBIJIAO'].to_f / 10_000).round(2)
            object['amount'] = (datum['SHIZHI'].to_f / 10_000).round(2)
            object['ratio'] = (datum['SCSTC27'].to_f * 100).round(2)
            result << object
          end
        end
        result
      end

      # 获取新股上市数据
      # Parameters
      # --------
      # retry_count : int, 默认 3
      #              如遇网络等问题重复执行的次数
      # pause : int, 默认 0
      #             重复请求数据过程中暂停的秒数，防止请求间隔时间太短出现的问题

      # Return
      # ------
      # DataFrame
      # code:股票代码
      # name:名称
      # ipo_date:上网发行日期
      # issue_date:上市日期
      # amount:发行数量(万股)
      # markets:上网发行数量(万股)
      # price:发行价格(元)
      # pe:发行市盈率
      # limit:个人申购上限(万股)
      # funds：募集资金(亿元)
      # ballot:网上中签率(%)
      def new_stocks
        url = format(NEW_STOCKS_URL, P_TYPE['http'], DOMAINS['vsf'],
                     PAGES['newstock'], 1)
        doc_generator = lambda do |p|
          url = format(NEW_STOCKS_URL, P_TYPE['http'], DOMAINS['vsf'],
                       PAGES['newstock'], p)
          Nokogiri.HTML open(url), nil, 'gbk'
        end
        row_finder = lambda do |doc|
          doc.css('table#NewStockTable > tr').drop(2)
        end
        row_processor = lambda do |row|
          arr = row.to_a
          arr.delete_at 1
          arr.map(&:content).map(&:strip)
        end
        last_page_guard = lambda do |doc|
          if doc.css('table.table2 tr:first td:first a').size > 0
            doc.css('table.table2 tr:first td:first a').last.text != '尾页'
          else
            true
          end
        end
        get_data(1, NEW_STOCKS_COLS, doc_generator, row_finder,
                 row_processor, last_page_guard)
      end

      # 获取沪市融资融券数据列表
      # Parameters
      # --------
      # start:string
      #               开始日期 format：YYYY-MM-DD 为空时取去年今日
      # end:string
      #               结束日期 format：YYYY-MM-DD 为空时取当前日期
      # retry_count : int, 默认 3
      #              如遇网络等问题重复执行的次数
      # pause : int, 默认 0
      #             重复请求数据过程中暂停的秒数，防止请求间隔时间太短出现的问题

      # Return
      # ------
      # DataFrame
      # opDate:信用交易日期
      # rzye:本日融资余额(元)
      # rzmre: 本日融资买入额(元)
      # rqyl: 本日融券余量
      # rqylje: 本日融券余量金额(元)
      # rqmcl: 本日融券卖出量
      # rzrqjyzl:本日融资融券余额(元)
      def sh_margins(start_date = nil, end_date = nil)
        start_date ||= Date.today.prev_year.strftime('%Y-%m-%d')
        end_date ||= Date.today.strftime('%Y-%m-%d')
        start_date = start_date.delete '-'
        end_date = end_date.delete '-'
        page_no = ''
        begin_page = ''
        end_page = ''
        result = []

        loop do
          tail = format(MAR_SH_HZ_TAIL_URL, page_no, begin_page, end_page)
          if page_no == ''
            page_no = 6
            tail = ''
          else
            page_no += 5
          end
          begin_page = page_no
          end_page = page_no + 4
          url = format(MAR_SH_HZ_URL, P_TYPE['http'], DOMAINS['sseq'],
                       PAGES['qmd'], _random(5), start_date, end_date, tail,
                       _random)
          ref = format(MAR_SH_HZ_REF_URL, P_TYPE['http'], DOMAINS['sse'])
          resp = HTTParty.get(
            url,
            headers: { 'Referer' => ref },
            cookies: MAR_SH_COOKIES
          )
          json = JSON.parse(resp.body.sub(/jsonpCallback\d+\(/, '')[0..-2])['pageHelp']

          json['data'].each do |datum|
            object = {}
            MAR_SH_HZ_COLS.each do |key|
              if key == 'opDate'
                date = datum[key]
                object[key] = format('%s-%s-%s', date[0..3], date[4..5], date[6..7])
              else
                object[key] = datum[key]
              end
            end
            result << object
          end

          page_count = json['pageCount']
          data_page = page_count % 5 > 0 ? page_count / 5 + 1 : page_count / 5
          break unless begin_page < data_page * 5
        end
        result
      end

      # 获取沪市融资融券明细列表
      # Parameters
      # --------
      # date:string
      #             明细数据日期 format：YYYY-MM-DD 默认为空''
      # symbol：string
      #             标的代码，6位数字e.g.600848，默认为空
      # start:string
      #               开始日期 format：YYYY-MM-DD 默认为空''
      # end:string
      #               结束日期 format：YYYY-MM-DD 默认为空''
      # retry_count : int, 默认 3
      #              如遇网络等问题重复执行的次数
      # pause : int, 默认 0
      #             重复请求数据过程中暂停的秒数，防止请求间隔时间太短出现的问题

      # Return
      # ------
      # DataFrame
      # opDate:信用交易日期
      # stockCode:标的证券代码
      # securityAbbr:标的证券简称
      # rzye:本日融资余额(元)
      # rzmre: 本日融资买入额(元)
      # rzche:本日融资偿还额(元)
      # rqyl: 本日融券余量
      # rqmcl: 本日融券卖出量
      # rqchl: 本日融券偿还量
      def sh_margin_details(date = '', symbol = '', start_date = '', end_date = '')
        date = date == '' ? date : date.delete('-')
        start_date = start_date == '' ? start_date : start_date.delete('-')
        end_date = end_date == '' ? end_date : end_date.delete('-')
        date = '' if start_date != '' && end_date != ''
        page_no = ''
        begin_page = ''
        end_page = ''
        result = []

        loop do
          tail = format(MAR_SH_HZ_TAIL_URL, page_no, begin_page, end_page)
          if page_no == ''
            page_no = 6
            tail = ''
          else
            page_no += 5
          end
          begin_page = page_no
          end_page = page_no + 4
          url = format(MAR_SH_MX_URL, P_TYPE['http'], DOMAINS['sseq'],
                       PAGES['qmd'], _random(5), date, symbol, start_date,
                       end_date, tail, _random)
          ref = format(MAR_SH_HZ_REF_URL, P_TYPE['http'], DOMAINS['sse'])
          resp = HTTParty.get(
            url,
            headers: { 'Referer' => ref },
            cookies: MAR_SH_COOKIES
          )
          json = JSON.parse(resp.body.sub(/jsonpCallback\d+\(/, '')[0..-2])['pageHelp']

          json['data'].each do |datum|
            object = {}
            MAR_SH_MX_COLS.each do |key|
              if key == 'opDate'
                date = datum[key]
                object[key] = format('%s-%s-%s', date[0..3], date[4..5], date[6..7])
              else
                object[key] = datum[key]
              end
            end
            result << object
          end

          page_count = json['pageCount']
          data_page = page_count % 5 > 0 ? page_count / 5 + 1 : page_count / 5
          p result.size
          break unless begin_page < data_page * 5
        end
        result
      end

      def sz_margins(start_date = nil, end_date = nil)
        if start_date.nil? && end_date.nil?
          start_date ||= Date.today.prev_day(7)
          end_date ||= Date.today
        end
        raise MAR_SZ_HZ_MSG2 if start_date.nil? || end_date.nil?
        range = (start_date..end_date).to_a
        raise MAR_SZ_HZ_MSG if range.size > 261
        _write_head
        result = []
        range.each do |date|
          _write_console
          url = format(MAR_SZ_HZ_URL, P_TYPE['http'], DOMAINS['szse'],
                       PAGES['szsefc'], date.strftime('%Y-%m-%d'))
          doc = Nokogiri::HTML(open(url), nil, 'gbk')
          begin
            row = doc.css('tr')[1].css('td')
          rescue
            next
          end
          object = { 'opDate' => date}
          MAR_SZ_HZ_COLS.each_with_index do |key, index|
            object[key] = row[index].content.strip
          end
          result << object
        end
        puts "\n"
        result
      end

      # 获取深市融资融券明细列表
      # Parameters
      # --------
      # date:string
      #             明细数据日期 format：YYYY-MM-DD 默认为空''
      # retry_count : int, 默认 3
      #              如遇网络等问题重复执行的次数
      # pause : int, 默认 0
      #             重复请求数据过程中暂停的秒数，防止请求间隔时间太短出现的问题

      # Return
      # ------
      # DataFrame
      # opDate:信用交易日期
      # stockCode:标的证券代码
      # securityAbbr:标的证券简称
      # rzmre: 融资买入额(元)
      # rzye:融资余额(元)
      # rqmcl: 融券卖出量
      # rqyl: 融券余量
      # rqye: 融券余量(元)
      # rzrqye:融资融券余额(元)
      def sz_margin_details(date = nil)
        date ||= Date.today.prev_day.strftime('%Y-%m-%d')
        url = format(MAR_SZ_MX_URL, P_TYPE['http'], DOMAINS['szse'],
                     PAGES['szsefc'], date)
        doc = Nokogiri::HTML(open(url), nil, 'gbk')
        rows = doc.css('tr')[1..-2]
        result = []
        rows.each do |row|
          object = { 'opDate' => date }
          tds = row.css('td')
          MAR_SZ_MX_COLS.each_with_index do |key, index|
            object[key] = tds[index].content.strip
          end
          result << object
        end
        result
      end

      private

      def get_data(start_page, headers, doc_generator, row_finder,
                   row_processor, last_page_guard)
        _write_head
        [].concat process_data(start_page, headers, doc_generator,
                               row_finder, row_processor, last_page_guard)
      end

      def process_data(start_page, headers, doc_generator, row_finder,
                       row_processor, last_page_guard)
        result = []
        page = start_page
        loop do
          _write_console
          doc = doc_generator.call(page)
          row_finder.call(doc).each do |tr|
            object = {}
            row_processor.call(tr.css('td')).each_with_index do |item, index|
              object[headers[index]] = item if headers[index]
            end
            result << object
          end
          break if last_page_guard.call(doc)
          page += 1
        end
        result
      end

      def _random(n = 13)
        start_int = 10**(n-1)
        end_int = (10**n) - 1
        rand(start_int..end_int).to_s
      end

      module_function :profit_data, :forecast_data, :fund_holdings, :new_stocks,
                      :sh_margins, :sh_margin_details, :sz_margins, :xsg_data,
                      :sz_margin_details, :get_data, :process_data, :_random
    end
  end
end
