require 'tushare/util'

module Tushare
  module Stock
    # 获取股票分类数据接口
    module Classifying
      extend Tushare::Util
      extend self

      # 获取行业分类数据
      # Parameters
      # ----------
      # standard
      # sina:新浪行业 sw：申万 行业

      # Returns
      # -------
      # DataFrame
      #     code :股票代码
      #     name :股票名称
      #     c_name :行业名称
      def industry_classified(standard = 'sina')
        _write_head
        url = format(SINA_INDUSTRY_INDEX_URL, P_TYPE['http'], DOMAINS['vsf'],
                     standard == 'sw' ? PAGES['ids_sw'] : PAGES['ids'])
        type_data = fetch_type_data(url)
        result = []
        type_data.keys.each do |type|
          result.concat fetch_detail(type, type_data[type])
        end
        result
      end

      # 获取概念分类数据
      # Return
      # --------
      # DataFrame
      #     code :股票代码
      #     name :股票名称
      #     c_name :概念名称
      def concept_classified
        _write_head
        url = format(SINA_CONCEPTS_INDEX_URL, P_TYPE['http'], DOMAINS['sf'],
                     PAGES['cpt'])
        type_data = fetch_type_data(url)
        result = []
        type_data.keys.each do |type|
          result.concat fetch_detail(type, type_data[type])
        end
        result
      end

      # 获取地域分类数据
      # Return
      # --------
      # DataFrame
      #     code :股票代码
      #     name :股票名称
      #     area :地域名称
      def area_classified
        basics = Tushare::Stock::Fundamental.get_stock_basics
        result = []
        basics.each do |basic|
          result << { 'code' => basic['code'],
                      'name' => basic['name'],
                      'area' => basic['area'] }
        end
        result.sort_by { |object| object['area'] || '' }
      end

      # 获取创业板股票
      # Return
      # --------
      # DataFrame
      #     code :股票代码
      #     name :股票名称
      def gem_classified
        basics = Tushare::Stock::Fundamental.get_stock_basics
        basics.select! { |basic| basic['code'][0] == '3' }
        result = []
        basics.each do |basic|
          result << { 'code' => basic['code'], 'name' => basic['name'] }
        end
        result.sort_by { |object| object['code'] || '' }
      end

      # 获取中小板股票
      # Return
      # --------
      # DataFrame
      #     code :股票代码
      #     name :股票名称
      def sme_classified
        basics = Tushare::Stock::Fundamental.get_stock_basics
        basics.select! { |basic| basic['code'][0..2] == '002' }
        result = []
        basics.each do |basic|
          result << { 'code' => basic['code'], 'name' => basic['name'] }
        end
        result.sort_by { |object| object['code'] || '' }
      end

      # 获取风险警示板股票
      # Return
      # --------
      # DataFrame
      #     code :股票代码
      #     name :股票名称
      def st_classified
        basics = Tushare::Stock::Fundamental.get_stock_basics
        basics.select! { |basic| basic['name'].include? 'ST' }
        result = []
        basics.each do |basic|
          result << { 'code' => basic['code'], 'name' => basic['name'] }
        end
        result.sort_by { |object| object['code'] || '' }
      end

      # 获取沪深300当前成份股及所占权重
      # Return
      # --------
      # DataFrame
      #     code :股票代码
      #     name :股票名称
      #     date :日期
      #     weight:权重
      def hs300s
        url = format(HS300_CLASSIFY_URL_FTP, P_TYPE['ftp'], DOMAINS['idxip'],
                     PAGES['hs300w'])
        fetch_ftp_file url do |file|
          xls = ::Roo::Spreadsheet.open(file, extension: 'xls')
          result = []
          xls.sheet(0).drop(1).each do |row|
            result << { 'date' => row[0],
                        'code' => row[3],
                        'weight' => row[6] }
          end
          basics = Tushare::Stock::Fundamental.get_stock_basics
          result.each do |object|
            find_result = basics.find { |basic| basic['code'] == object['code'] }
            object[name] = find_result['name']
          end
          result
        end
      end

      # 获取上证50成份股
      # Return
      # --------
      # DataFrame
      #     code :股票代码
      #     name :股票名称
      def sz50s
        url = format(HS300_CLASSIFY_URL_FTP, P_TYPE['ftp'], DOMAINS['idxip'],
                     PAGES['sz50b'])
        fetch_ftp_file url do |file|
          xls = ::Roo::Spreadsheet.open(file, extension: 'xls')
          result = []
          xls.sheet(0).drop(1).each do |row|
            result << { 'code' => row[0],
                        'name' => row[1] }
          end
          result
        end
      end

      # 获取中证500成份股
      # Return
      # --------
      # DataFrame
      #     code :股票代码
      #     name :股票名称
      def zz500s
        url = format(HS300_CLASSIFY_URL_FTP, P_TYPE['ftp'], DOMAINS['idxip'],
                     PAGES['zz500wt'])
        fetch_ftp_file url do |file|
          xls = ::Roo::Spreadsheet.open(file, extension: 'xls')
          result = []
          xls.sheet(0).drop(1).each do |row|
            result << { 'date' => row[0],
                        'code' => row[3],
                        'weight' => row[6] }
          end
          basics = Tushare::Stock::Fundamental.get_stock_basics
          result.each do |object|
            find_result = basics.find { |basic| basic['code'] == object['code'] }
            object[name] = find_result['name']
          end
        end
      end

      # 获取终止上市股票列表
      # Return
      # --------
      # DataFrame
      #     code :股票代码
      #     name :股票名称
      #     oDate:上市日期
      #     tDate:终止上市日期
      def terminated
        ref = format(SSEQ_CQ_REF_URL, P_TYPE['http'], DOMAINS['sse'])
        url = format(TERMINATED_URL, P_TYPE['http'], DOMAINS['sseq'],
                     PAGES['ssecq'], _random(5), _random)
        resp = HTTParty.get(
          url,
          headers: { 'Referer' => ref },
          cookies: MAR_SH_COOKIES
        )
        json = JSON.parse(resp.body.sub(/jsonpCallback\d+\(/, '')[0..-2])['pageHelp']
        result = []
        json['data'].each do |datum|
          object = {}
          TERMINATED_T_COLS.each_with_index do |key, index|
            object[TERMINATED_COLS[index]] = datum[key]
          end
          result << object
        end
        result
      end

      # 获取暂停上市股票列表
      # Return
      # --------
      # DataFrame
      #     code :股票代码
      #     name :股票名称
      #     oDate:上市日期
      #     tDate:终止上市日期
      def suspended
        ref = format(SSEQ_CQ_REF_URL, P_TYPE['http'], DOMAINS['sse'])
        url = format(SUSPENDED_URL, P_TYPE['http'], DOMAINS['sseq'],
                     PAGES['ssecq'], _random(5), _random)
        resp = HTTParty.get(
          url,
          headers: { 'Referer' => ref },
          cookies: MAR_SH_COOKIES
        )
        json = JSON.parse(resp.body.sub(/jsonpCallback\d+\(/, '')[0..-2])['pageHelp']
        result = []
        json['data'].each do |datum|
          object = {}
          TERMINATED_T_COLS.each_with_index do |key, index|
            object[TERMINATED_COLS[index]] = datum[key]
          end
          result << object
        end
        result
      end

      private

      def fetch_detail(type, type_name)
        _write_console
        url = format(SINA_DATA_DETAIL_URL, P_TYPE['http'], DOMAINS['vsf'],
                     PAGES['jv'], type)
        resp = HTTParty.get(url)
        json = JSON.parse(resp.body.encode('utf-8', 'gbk').gsub(/,(.*?):/) { |s| ",\"#{s[1..-2]}\":" }.gsub('"{symbol', '{"symbol').gsub('{symbol', '{"symbol"'))
        result = []
        json.each do |row|
          object = {}
          FOR_CLASSIFY_B_COLS.each do |field|
            object[field] = row[field]
          end
          object['c_name'] = type_name
          result << object
        end
        result
      end

      def fetch_type_data(url)
        resp = HTTParty.get(url)
        json = JSON.parse(resp.body.encode('utf-8', 'gbk').split('=').last)
        result = {}
        json.values.each do |row|
          arr = row.split(',')
          result[arr[0]] = arr[1]
        end
        result
      end

      def _random(n = 13)
        start_int = 10**(n-1)
        end_int = (10**n) - 1
        rand(start_int..end_int).to_s
      end
    end
  end
end
