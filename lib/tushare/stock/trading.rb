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
          CSV.new(tb_value, headers: :first_row, encoding: 'utf-8', col_sep: ' ').map { |a| Hash[TICK_COLUMNS.zip(a.fields)] }
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

      # 获取实时交易数据 getting real time quotes data
      # 用于跟踪交易情况（本次执行的结果-上一次执行的数据）
      # Parameters
      # ------
      #     symbols : string, array-like object (list, tuple, Series).
      # return
      # -------
      #     DataFrame 实时交易数据
      #           属性:0：name，股票名字
      #         1：open，今日开盘价
      #         2：pre_close，昨日收盘价
      #         3：price，当前价格
      #         4：high，今日最高价
      #         5：low，今日最低价
      #         6：bid，竞买价，即“买一”报价
      #         7：ask，竞卖价，即“卖一”报价
      #         8：volumn，成交量 maybe you need do volumn/100
      #         9：amount，成交金额（元 CNY）
      #         10：b1_v，委买一（笔数 bid volume）
      #         11：b1_p，委买一（价格 bid price）
      #         12：b2_v，“买二”
      #         13：b2_p，“买二”
      #         14：b3_v，“买三”
      #         15：b3_p，“买三”
      #         16：b4_v，“买四”
      #         17：b4_p，“买四”
      #         18：b5_v，“买五”
      #         19：b5_p，“买五”
      #         20：a1_v，委卖一（笔数 ask volume）
      #         21：a1_p，委卖一（价格 ask price）
      #         ...
      #         30：date，日期；
      #         31：time，时间；
      def get_realtime_quotes(symbols = nil)
        symbols = [symbols] if symbols.is_a?(String)
        symbols_list = (symbols || []).map { |code| code_to_symbol(code) }
                                      .join(',')
        url = format(LIVE_DATA_URL, P_TYPE['http'], DOMAINS['sinahq'],
                     _random, symbols_list)
        resp = HTTParty.get(url)
        resp_string = resp.body.encode('utf-8', 'gbk')
        result = []
        resp_string.scan(/\="(.*)";/).each_with_index do |match_array, match_index|
          string = match_array.first
          object = { 'code' => symbols[match_index] }
          string.split(',').each_with_index do |s, index|
            next if LIVE_DATA_COLS[index] == 's'
            object[LIVE_DATA_COLS[index]] = s
          end
          result << object
        end
        result
      end

      # 获取历史复权数据
      # Parameters
      # ------
      #   code:string
      #               股票代码 e.g. 600848
      #   start:string
      #               开始日期 format：YYYY-MM-DD 为空时取当前日期
      #   end:string
      #               结束日期 format：YYYY-MM-DD 为空时取去年今日
      #   autype:string
      #               复权类型，qfq-前复权 hfq-后复权 None-不复权，默认为qfq
      #   drop_factor : bool, 默认 True
      #             是否移除复权因子，在分析过程中可能复权因子意义不大，但是如需要先储存到数据库之后再分析的话，有该项目会更加灵活
      # return
      # -------
      #   DataFrame
      #       date 交易日期 (index)
      #       open 开盘价
      #       high  最高价
      #       close 收盘价
      #       low 最低价
      #       volume 成交量
      #       amount 成交金额
      def get_h_data(code, start_date = nil, end_date = nil, autype = 'qfq',
                     index = false, drop_factor = true)
        start_date = if start_date.nil?
                       Date.today.prev_year
                     else
                       Date.strptime(start_date, '%F')
                     end
        end_date = if end_date.nil?
                     Date.today
                   else
                     Date.strptime(end_date, '%F')
                   end
        qs = start_date.step(end_date)
                       .map { |d| [d.year, (d.month + 2) / 3] }
                       .uniq
        _write_head
        result = _parse_fq_data(_get_index_url(index, code, qs[0]), index)
        if qs.length > 1
          1.upto(qs.length - 1).each do |i|
            _write_console
            result.concat _parse_fq_data(_get_index_url(index, code, qs[i]),
                                         index)
          end
        end
        return [] if result.empty?
        sorted_result = result.sort_by { |object| Date.strptime(object['date'], '%F') }
        last_date = sorted_result.last['date']
        result = result.uniq { |object| object['date'] }.select do |object|
          date = Date.strptime(object['date'], '%F')
          date >= start_date && date <= end_date
        end
        if index
          return result.sort_by { |object| Date.strptime(object['date'], '%F') }
        end
        # 判断复权
        if autype == 'hfq'
          result.map do |object|
            object.delete 'factor' if drop_factor
            %w(open high close low).each do |key|
              object[key] = object[key].to_f.round(2)
            end
          end
          if index
            return result.sort_by { |object| Date.strptime(object['date'], '%F') }
          end
          result
        elsif autype == 'qfq'
          result.map { |object| object.delete 'factor' } if drop_factor
          fq_factors = _parse_fq_factor(code, start_date, end_date)
          fq_factors.sort_by! { |object| Date.strptime(object['date'], '%F') }
          frow = fq_factors.select { |object| object['date'] == last_date }.first
          rt = get_realtime_quotes(code)
          return nil if rt.empty?
          pre_close = if rt.first['high'].to_f == 0 && rt.first['low'].to_f == 0
                        rt.first['pre_close'].to_f
                      elsif holiday? Date.today
                        rt.first['price'].to_f
                      elsif Time.now.hour > 9 && Time.now.hour < 18
                        rt.first['pre_close'].to_f
                      else
                        rt.first['price'].to_f
                      end
          rate = frow['factor'].to_f / pre_close
          result.each do |object|
            %w(open high low close).each do |key|
              object[key] = (object[key].to_f / rate).round(2)
            end
          end
          result.sort_by { |object| Date.strptime(object['date'], '%F') }
        else
          result.each do |object|
            %w(open high low close).each do |key|
              object[key] = (object[key].to_f / object['factor'].to_f).round(2)
            end
            object.delete 'factor' if drop_factor
          end
          result.sort_by { |object| Date.strptime(object['date'], '%F') }
        end
      end

      # 获取大盘指数行情
      # return
      # -------
      #   DataFrame
      #       code:指数代码
      #       name:指数名称
      #       change:涨跌幅
      #       open:开盘价
      #       preclose:昨日收盘价
      #       close:收盘价
      #       high:最高价
      #       low:最低价
      #       volume:成交量(手)
      #       amount:成交金额（亿元）
      def get_index
        url = format(INDEX_HQ_URL, P_TYPE['http'], DOMAINS['sinahq'])
        resp = HTTParty.get(url)
        string = resp.body.encode('utf-8', 'gbk')
                     .delete('var hq_str_sh')
                     .delete('var hq_str_sz')
                     .delete('";')
                     .delete('"')
                     .tr!('=', ',')
        csv = CSV.new(string)
        result = []
        headers = INDEX_HEADER.split(',')
        csv.each do |row|
          object = {}
          row.each_with_index do |value, index|
            next unless INDEX_COLS.include? headers[index]
            object[headers[index]] = value
          end
          object['change'] = ((object['close'].to_f / object['preclose'].to_f - 1) * 100).round(2)
          object['amount'] = (object['amount'].to_f / 100_000_000).round(4)
          result << object
        end
        result
      end

      def get_hists(symbols, start_date: '', end_date: '', ktype: 'D')
        if  symbols.respond_to? :each
          result = []
          symbols.each do |symbol|
            data = get_hist_data(symbol, start_date: start_date,
                                         end_date: end_date,
                                         ktype: ktype)
            data.map { |object| object['code'] = symbol }
            result.concat data
          end
          result
        else
          nil
        end
      end

      protected

        def _parse_fq_factor(code, start_date, end_date)
          symbol = _code_to_symbol(code)
          url = format(HIST_FQ_FACTOR_URL, P_TYPE['http'], DOMAINS['vsf'],
                       symbol)
          resp = HTTParty.get(url)
          string = resp.body[1..-2].gsub('{_', '{"')
                                   .gsub!('total', '"total"')
                                   .gsub!('data', '"data"')
                                   .gsub!(':"', '":"')
                                   .gsub!('",_', '","')
                                   .tr!('_', '-')
          json = JSON.parse(string)
          result = []
          json['data'].each_pair do |key, value|
            result << { 'date' => key, 'factor' => value.to_f }
          end
          result.uniq { |object| object['date'] }
        end

        def _parse_fq_data(url, index)
          html = Nokogiri::HTML(open(url), nil, 'gbk')
          columns = index ? HIST_FQ_COLS[0..7] : HIST_FQ_COLS
          result = []
          html.css('table#FundHoldSharesTable tr').drop(2).each do |tr|
            object = {}
            tr.css('td').each_with_index do |td, i|
              next if columns[i].nil?
              object[columns[i]] = td.text.strip
            end
            result << object
          end
          result
        end

        def _get_index_url(index, code, qt)
          if index
            format(HIST_INDEX_URL, P_TYPE['http'], DOMAINS['vsf'], code, qt[0],
                   qt[1])
          else
            format(HIST_FQ_URL, P_TYPE['http'], DOMAINS['vsf'], code, qt[0],
                   qt[1])
          end
        end

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

        def code_to_symbol(code)
          return INDEX_LIST[code] if INDEX_LABELS.include? code
          return '' if code.length != 6
          return "sh#{code}" if %w(5 6 9).include? code[0]
          return "sz#{code}"
        end

        def _random(n = 13)
          start_int = 10 ** (n - 1)
          end_int = (10 ** n) -1
          rand(start_int..end_int).to_s
        end

      module_function :get_hist_data, :get_tick_data, :get_sina_dd,
                      :get_today_ticks, :get_today_all, :_today_ticks,
                      :_parsing_dayprice_json, :get_realtime_quotes,
                      :_random, :code_to_symbol, :get_h_data, :_parse_fq_factor,
                      :_get_index_url, :_parse_fq_data, :get_index, :get_hists
    end
  end

end
