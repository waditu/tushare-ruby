require 'tushare/util'

module Tushare
  module Stock
    # 上海银行间同业拆放利率（Shibor）数据接口
    module Shibor
      extend Tushare::Util
      extend self

      # 获取上海银行间同业拆放利率（Shibor）
      # Parameters
      # ------
      #   year:年份(int)

      # Return
      # ------
      # date:日期
      # ON:隔夜拆放利率
      # 1W:1周拆放利率
      # 2W:2周拆放利率
      # 1M:1个月拆放利率
      # 3M:3个月拆放利率
      # 6M:6个月拆放利率
      # 9M:9个月拆放利率
      # 1Y:1年拆放利率
      def shibor_data(year = Time.now.year)
        url = format(SHIBOR_DATA_URL, P_TYPE['http'], DOMAINS['shibor'],
                     PAGES['dw'], 'Shibor', year, SHIBOR_TYPE['Shibor'], year)
        xls = ::Roo::Spreadsheet.open(URI.encode(url), extension: 'xls')
        process_xls_file(xls, SHIBOR_COLS)
      end

      # 获取Shibor银行报价数据
      # Parameters
      # ------
      #   year:年份(int)

      # Return
      # ------
      # date:日期
      # bank:报价银行名称
      # ON:隔夜拆放利率
      # ON_B:隔夜拆放买入价
      # ON_A:隔夜拆放卖出价
      # 1W_B:1周买入
      # 1W_A:1周卖出
      # 2W_B:买入
      # 2W_A:卖出
      # 1M_B:买入
      # 1M_A:卖出
      # 3M_B:买入
      # 3M_A:卖出
      # 6M_B:买入
      # 6M_A:卖出
      # 9M_B:买入
      # 9M_A:卖出
      # 1Y_B:买入
      # 1Y_A:卖出
      def shibor_quote_data(year = Time.now.year)
        url = format(SHIBOR_DATA_URL, P_TYPE['http'], DOMAINS['shibor'],
                     PAGES['dw'], 'Quote', year, SHIBOR_TYPE['Quote'], year)
        xls = ::Roo::Spreadsheet.open(URI.encode(url), extension: 'xls')
        process_xls_file(xls, QUOTE_COLS)
      end

      # 获取Shibor均值数据
      # Parameters
      # ------
      #   year:年份(int)

      # Return
      # ------
      # date:日期
      #    其它分别为各周期5、10、20均价
      def shibor_ma_data(year = Time.now.year)
        url = format(SHIBOR_DATA_URL, P_TYPE['http'], DOMAINS['shibor'],
                     PAGES['dw'], 'Shibor_Tendency', year, SHIBOR_TYPE['Tendency'],
                     year)
        xls = ::Roo::Spreadsheet.open(URI.encode(url), extension: 'xls')
        process_xls_file(xls, SHIBOR_MA_COLS)
      end

      # 获取贷款基础利率（LPR）
      # Parameters
      # ------
      #   year:年份(int)

      # Return
      # ------
      # date:日期
      # 1Y:1年贷款基础利率
      def lpr_data(year = Time.now.year)
        url = format(SHIBOR_DATA_URL, P_TYPE['http'], DOMAINS['shibor'],
                     PAGES['dw'], 'LPR', year, SHIBOR_TYPE['LPR'], year)
        xls = ::Roo::Spreadsheet.open(URI.encode(url), extension: 'xls')
        process_xls_file(xls, LPR_COLS)
      end

      # 获取贷款基础利率均值数据
      # Parameters
      # ------
      #   year:年份(int)

      # Return
      # ------
      # date:日期
      # 1Y_5:5日均值
      # 1Y_10:10日均值
      # 1Y_20:20日均值
      def lpr_ma_data(year = Time.now.year)
        url = format(SHIBOR_DATA_URL, P_TYPE['http'], DOMAINS['shibor'],
                     PAGES['dw'], 'LPR_Tendency', year,
                     SHIBOR_TYPE['LPR_Tendency'], year)
        xls = ::Roo::Spreadsheet.open(URI.encode(url), extension: 'xls')
        process_xls_file(xls, LPR_MA_COLS)
      end

      private

      # process xls every sheet and every sheet skip the first row
      def process_xls_file(xls, cols)
        result = []
        xls.each_with_pagename do |_, sheet|
          sheet.drop(1).each do |row|
            object = {}
            cols.each_with_index { |key, index| object[key] = row[index] }
            result << object
          end
        end
        result
      end
    end
  end
end
