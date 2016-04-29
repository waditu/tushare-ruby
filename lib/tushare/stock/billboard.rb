require 'tushare/util'

module Tushare
  module Stock
    # 龙虎榜数据
    module Billboard
      extend Tushare::Util
      extend self

      # 获取每日龙虎榜列表
      # Parameters
      # --------
      # date:string
      #             明细数据日期 format：YYYY-MM-DD 如果为空，返回最近一个交易日的数据

      # Return
      # ------
      # DataFrame
      #     code：代码
      #     name ：名称
      #     pchange：涨跌幅
      #     amount：龙虎榜成交额(万)
      #     buy：买入额(万)
      #     bratio：占总成交比例
      #     sell：卖出额(万)
      #     sratio ：占总成交比例
      #     reason：上榜原因
      #     date  ：日期
      def top_list(date = Time.now.strftime('%F'))
        # TODO: 判断日期是否合法
        url = format(LHB_URL, P_TYPE['http'], DOMAINS['em'], date, date)
        resp = HTTParty.get(url)
        string = resp.body.encode('utf-8', 'gbk').split('_1=').last
        json = JSON.parse(string)
        result = []
        json['data'].each do |datum|
          object = {}
          LHB_COLS.each_with_index do |key, index|
            object[key] = datum[LHB_TMP_COLS[index]]
            if %w(buy sell amount Turnover).include? key
              object[key] = (object[key].to_f / 10000).round(2)
            end
          end
          object['bration'] = (object['buy'] / object['Turnover']).round(2)
          object['sratio'] = (object['sell'] /object['Turnover']).round(2)
          object['date'] = date
          object.delete('Turnover')
          result << object
        end
        result
      end

      # 获取个股上榜统计数据
      # Parameters
      # --------
      #     days:int
      #               天数，统计n天以来上榜次数，默认为5天，其余是10、30、60
      #     retry_count : int, 默认 3
      #                  如遇网络等问题重复执行的次数
      #     pause : int, 默认 0
      #                 重复请求数据过程中暂停的秒数，防止请求间隔时间太短出现的问题
      # Return
      # ------
      # DataFrame
      #     code：代码
      #     name：名称
      #     count：上榜次数
      #     bamount：累积购买额(万)
      #     samount：累积卖出额(万)
      #     net：净额(万)
      #     bcount：买入席位数
      #     scount：卖出席位数
      def cap_tops(days = 5)
        _check_lhb_input(days)
        get_data(1, LHB_GGTJ_COLS, lambda do |p|
          format(LHB_SINA_URL, P_TYPE['http'], DOMAINS['vsf'], LHB_KINDS[0],
                 PAGES['fd'], days, p)
        end)
      end

      # 获取营业部上榜统计数据
      # Parameters
      # --------
      # days:int
      #           天数，统计n天以来上榜次数，默认为5天，其余是10、30、60
      # retry_count : int, 默认 3
      #              如遇网络等问题重复执行的次数
      # pause : int, 默认 0
      #             重复请求数据过程中暂停的秒数，防止请求间隔时间太短出现的问题
      # Return
      # ---------
      # broker：营业部名称
      # count：上榜次数
      # bamount：累积购买额(万)
      # bcount：买入席位数
      # samount：累积卖出额(万)
      # scount：卖出席位数
      # top3：买入前三股票
      def broker_tops(days = 5)
        _check_lhb_input(days)
        get_data(1, LHB_YYTJ_COLS, lambda do |p|
          format(LHB_SINA_URL, P_TYPE['http'], DOMAINS['vsf'], LHB_KINDS[1],
                 PAGES['fd'], days, p)
        end)
      end

      # 获取机构席位追踪统计数据
      # Parameters
      # --------
      # days:int
      #           天数，统计n天以来上榜次数，默认为5天，其余是10、30、60
      # retry_count : int, 默认 3
      #              如遇网络等问题重复执行的次数
      # pause : int, 默认 0
      #             重复请求数据过程中暂停的秒数，防止请求间隔时间太短出现的问题

      # Return
      # --------
      # code:代码
      # name:名称
      # bamount:累积买入额(万)
      # bcount:买入次数
      # samount:累积卖出额(万)
      # scount:卖出次数
      # net:净额(万)
      def inst_tops(days = 5)
        _check_lhb_input(days)
        get_data(
          1,
          LHB_JGZZ_COLS,
          lambda do |p|
            format(LHB_SINA_URL, P_TYPE['http'], DOMAINS['vsf'], LHB_KINDS[2],
                   PAGES['fd'], days, p)
          end,
          lambda do |tds|
            tds = tds.to_a
            tds[0..1].concat tds[4..8]
          end)
      end

      # 获取最近一个交易日机构席位成交明细统计数据
      # Parameters
      # --------
      # retry_count : int, 默认 3
      #              如遇网络等问题重复执行的次数
      # pause : int, 默认 0
      #             重复请求数据过程中暂停的秒数，防止请求间隔时间太短出现的问题

      # Return
      # ----------
      # code:股票代码
      # name:股票名称
      # date:交易日期
      # bamount:机构席位买入额(万)
      # samount:机构席位卖出额(万)
      # type:类型
      def inst_detail
        get_data(
          1,
          LHB_JGMX_COLS,
          lambda do |p|
            format(LHB_SINA_URL, P_TYPE['http'], DOMAINS['vsf'], LHB_KINDS[3],
                   PAGES['fd'], '', p)
          end)
      end

      private

      def get_data(page, headers, url_generator, td_preprocessor = nil)
        _write_head
        result = []
        loop do
          url = url_generator.call(page)
          _write_console
          doc = Nokogiri::HTML(open(url), nil, 'gbk')
          doc.css('table#dataTable > tr').each do |tr|
            item = {}
            tds = tr.css('td')
            tds = td_preprocessor.call(tds) if td_preprocessor
            tds.each_with_index do |td, index|
              item[headers[index]] = td.content if headers[index]
            end
            result << item
          end
          next_page = doc.css('div.pages > a:last').css('a.nolink')
          break unless next_page.empty?
          page += 1
        end
        result
      end

      def _check_lhb_input(last)
        raise LHB_MSG unless [5, 10, 30, 60].include? last
      end
    end
  end
end
