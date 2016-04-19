require 'tushare/util'
require 'nokogiri'
require 'open-uri'

module Tushare
  module Stock
    module Trading
      extend Tushare::Util

      #  获取个股历史交易记录
      #  Parameters
      #  ------
      #    code:string
      #                股票代码 e.g. 600848
      #    start_date:string
      #                开始日期 format：YYYY-MM-DD 为空时取到API所提供的最早日期数据
      #    end_date:string
      #                结束日期 format：YYYY-MM-DD 为空时取到最近一个交易日数据
      #    ktype：string
      #                数据类型，D=日k线 W=周 M=月 5=5分钟 15=15分钟 30=30分钟 60=60分钟，默认为D
      #  return
      #  -------
      #    DataFrame
      #        属性:日期 ，开盘价， 最高价， 收盘价， 最低价， 成交量， 价格变动 ，涨跌幅，5日均价，10日均价，20日均价，5日均量，10日均量，20日均量，换手率
      def get_hist_data(code, options = {})

        symbol_code = _code_to_symbol(code)

        raise 'invalid code' if symbol_code == ''

        options = { start_date: '', end_date: '', ktype: 'D', ascending: false }.merge(options)

        if K_LABELS.include?(options[:ktype].upcase)
          url = format(DAY_PRICE_URL,
                       P_TYPE['http'],
                       DOMAINS['ifeng'],
                       K_TYPE[options[:ktype].upcase],
                       symbol_code)
        elsif K_MIN_LABELS.include?(options[:ktype])
          url = format(DAY_PRICE_MIN_URL,
                       P_TYPE['http'],
                       DOMAINS['ifeng'],
                       symbol_code,
                       options[:ktype])
        else
          raise 'ktype input error.'
        end

        cols = INDEX_LABELS.include?(code) ? INX_DAY_PRICE_COLUMNS : DAY_PRICE_COLUMNS

        resp = HTTParty.get(url)
        if resp.code.to_s == '200'
          records = JSON.parse(resp.body)['record']
          unless records.empty?
            cols = INX_DAY_PRICE_COLUMNS if records.first.size == 14

            records.reverse! if options[:ascending] == false
            if options[:start_date] != '' && options[:end_date] != ''
              records = records.select { |x| Time.parse(x[0]) <= Time.parse("#{options[:end_date]} 23:59") && Time.parse(x[0]) >= Time.parse("#{options[:start_date]} 00:00") }
            end

            records.map { |r| Hash[cols.zip(r)] }
          end
        else
          []
        end
      end
      #  '''
      #      获取分笔数据
      #  Parameters
      #  ------
      #      code:string
      #                股票代码 e.g. 600848
      #      date:string
      #                日期 format：YYYY-MM-DD
      #   return
      #   -------
      #      DataFrame 当日所有股票交易数据(DataFrame)
      #            属性:成交时间、成交价格、价格变动，成交手、成交金额(元)，买卖类型
      #  '''
      def get_tick_data(code, date = '')
        return nil if code.nil? || code.size != 6 || date == ''

        symbol_code = _code_to_symbol(code)

        raise 'invalid code' if symbol_code == ''

        url = format(TICK_PRICE_URL, P_TYPE['http'], DOMAINS['sf'], PAGES['dl'], date, symbol_code)

        resp = HTTParty.get(url)
        if resp.code.to_s == '200'
          tb_value = resp.body.encode('utf-8', 'gbk')
          CSV.new(tb_value, headers: :first_row, encoding: 'utf-8', col_sep: '\t').map { |a| Hash[TICK_COLUMNS.zip(a.fields)] }
        else
          []
        end
      end
      #  '''
      #      获取sina大单数据
      #  Parameters
      #  ------
      #      code:string
      #                股票代码 e.g. 600848
      #      date:string
      #                日期 format：YYYY-MM-DD
      #      retry_count : int, 默认 3
      #                如遇网络等问题重复执行的次数
      #      pause : int, 默认 0
      #               重复请求数据过程中暂停的秒数，防止请求间隔时间太短出现的问题
      #   return
      #   -------
      #      DataFrame 当日所有股票交易数据(DataFrame)
      #            属性:股票代码    股票名称    交易时间    价格    成交量    前一笔价格    类型（买、卖、中性盘）
      #  '''
      def get_sina_dd(code, options = {})
        return nil if code.nil? || code.size != 6
        symbol_code = _code_to_symbol(code)
        raise 'invalid code' if symbol_code == ''

        options = { date: Time.now.strftime('%Y-%m-%d'), vol: 400 }.merge(options)

        vol = options[:vol] * 100
        url = format(SINA_DD, P_TYPE['http'], DOMAINS['vsf'], PAGES['sinadd'], symbol_code, vol, options[:date])
        resp = HTTParty.get(url)
        if resp.code.to_s == '200'
          val = resp.body.encode('utf-8', 'gbk')
          CSV.new(val, headers: :first_row, encoding: 'utf-8', col_sep: ',').map do |a|
            fields = a.fields
            fields[0] = fields[0][2..-1]
            Hash[SINA_DD_COLS.zip(fields)]
          end
        else
          []
        end
      end
      #  '''
      #      获取当日分笔明细数据
      #  Parameters
      #  ------
      #      code:string
      #                股票代码 e.g. 600848
      #      retry_count : int, 默认 3
      #                如遇网络等问题重复执行的次数
      #      pause : int, 默认 0
      #               重复请求数据过程中暂停的秒数，防止请求间隔时间太短出现的问题
      #   return
      #   -------
      #      DataFrame 当日所有股票交易数据(DataFrame)
      #            属性:成交时间、成交价格、价格变动，成交手、成交金额(元)，买卖类型
      #  '''
      def get_today_ticks(code)
        return nil if code.nil? || code.size != 6
        symbol_code = _code_to_symbol(code)
        raise 'invalid code' if symbol_code == ''

        all_ticks = []

        url = format(TODAY_TICKS_PAGE_URL, P_TYPE['http'], DOMAINS['vsf'], PAGES['jv'], Time.now.strftime('%Y-%m-%d'), symbol_code)
        resp = HTTParty.get(url)
        if resp.code.to_s == '200'
          val = eval(resp.body[1..-2])
          pages = val[:detailPages].sort { |x, y| x[:page] <=> y[:page] }
          date  = Time.now.strftime('%Y-%m-%d')
          _write_head
          pages.each do |page|
            _write_console
            _today_ticks(symbol_code, date, page[:page], all_ticks)
          end
          all_ticks
        else
          []
        end
      end
      #   '''
      #       一次性获取最近一个日交易日所有股票的交易数据
      #   return
      #   -------
      #     DataFrame
      #          属性：代码，名称，涨跌幅，现价，开盘价，最高价，最低价，前日收盘价，成交量，换手率
      #   '''
      def get_today_all
        _write_head
        all_data = []
        data = _parsing_dayprice_json(1)
        unless data.nil?
          all_data << data
          (2...PAGE_NUM[0]).each do |page|
            nd = _parsing_dayprice_json(page)
            all_data << nd unless nd.nil?
          end
          all_data.flatten!
        end
        all_data
      end


      protected

        def _today_ticks(symbol, tdate, pageNo, ticks)
          url = format(TODAY_TICKS_URL, P_TYPE['http'], DOMAINS['vsf'], PAGES['t_ticks'], symbol, tdate, pageNo)
          doc = Nokogiri::HTML(open(url), nil, 'gbk')
          doc.css('table#datatbl > tbody > tr').each do |tr|
            items = []
            tr.children.each do |td|
              items << td.content.gsub(/\s+/, '').gsub('--', '0').gsub('%', '')
            end
            ticks << Hash[TODAY_TICK_COLUMNS.zip(items)] unless items.empty?
          end
        end
        #  '''
        #         处理当日行情分页数据，格式为json
        #   Parameters
        #   ------
        #      pageNum:页码
        #   return
        #   -------
        #      DataFrame 当日所有股票交易数据(DataFrame)
        #  '''
        def _parsing_dayprice_json(pageNum = 1)
          _write_console
          url = format(SINA_DAY_PRICE_URL, P_TYPE['http'], DOMAINS['vsf'], PAGES['jv'], pageNum)

          resp = HTTParty.get(url)
          if resp.code.to_s == '200'
            val = resp.body.encode('utf-8', 'gbk')
            return nil if val == 'null'
            hs   = eval(val)
            cols = DAY_TRADING_COLUMNS.clone
            cols.delete('symbol')
            hs.map { |x| t = {}; cols.each { |c| t[c.to_sym] = x[c.to_sym] };  t }

          else
            nil
          end
        end

      module_function :get_hist_data, :get_tick_data, :get_sina_dd,
                      :get_today_ticks, :get_today_all, :_today_ticks,
                      :_parsing_dayprice_json
    end
  end

end
