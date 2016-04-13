require 'tushare/util'

module Tushare
  module Stock 
    module Fundamental 
      extend Tushare::Util 
      extend self 
      ##
      # 获取沪深上市公司基本情况
      # Return
      # --------
      # DataFrame
      # code,代码
      # name,名称
      # industry,细分行业
      # area,地区
      # pe,市盈率
      # outstanding,流通股本
      # totals,总股本(万)
      # totalAssets,总资产(万)
      # liquidAssets,流动资产
      # fixedAssets,固定资产
      # reserved,公积金
      # reservedPerShare,每股公积金
      # eps,每股收益
      # bvps,每股净资
      # pb,市净率
      # timeToMarket,上市日期
      def get_stock_basics
        url = ALL_STOCK_BASICS_FILE
        response = HTTParty.get(url)
        if response.code.to_s == '200'
          tb_value = response.body.encode('utf-8', 'gbk')
          CSV.new(tb_value).to_a
        else
          []
        end
      end

      ##
      # 获取业绩报表数据
      # Parameters
      # --------
      # year:int 年度 e.g:2014
      # quarter:int 季度 :1、2、3、4，只能输入这4个季度
      #    说明：由于是从网站获取的数据，需要一页页抓取，速度取决于您当前网络速度
      #
      # Return
      # --------
      # DataFrame
      #     code,代码
      #     name,名称
      #     eps,每股收益
      #     eps_yoy,每股收益同比(%)
      #     bvps,每股净资产
      #     roe,净资产收益率(%)
      #     epcf,每股现金流量(元)
      #     net_profits,净利润(万元)
      #     profits_yoy,净利润同比(%)
      #     distrib,分配方案
      #     report_date,发布日期
      def get_report_data(year, quarter)
        check_year(year)
        check_quarter(quarter)
        get_data(year, quarter, 1, REPORT_COLS, REPORT_URL)
      end

      ##
      # 获取盈利能力数据
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
      #     roe,净资产收益率(%)
      #     net_profit_ratio,净利率(%)
      #     gross_profit_rate,毛利率(%)
      #     net_profits,净利润(万元)
      #     eps,每股收益
      #     business_income,营业收入(百万元)
      #     bips,每股主营业务收入(元)
      def get_profit_data(year, quarter)
        check_year(year)
        check_quarter(quarter)
        get_data(year, quarter, 1, PROFIT_COLS, PROFIT_URL)
      end

      ##
      # 获取营运能力数据
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
      #     arturnover,应收账款周转率(次)
      #     arturndays,应收账款周转天数(天)
      #     inventory_turnover,存货周转率(次)
      #     inventory_days,存货周转天数(天)
      #     currentasset_turnover,流动资产周转率(次)
      #     currentasset_days,流动资产周转天数(天)
      def get_operation_data(year, quarter)
        check_year(year)
        check_quarter(quarter)
        get_data(year, quarter, 1, OPERATION_COLS, OPERATION_URL)
      end

      ##
      # 获取成长能力数据
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
      #     mbrg,主营业务收入增长率(%)
      #     nprg,净利润增长率(%)
      #     nav,净资产增长率
      #     targ,总资产增长率
      #     epsg,每股收益增长率
      #     seg,股东权益增长率
      def get_growth_data(year, quarter)
        check_year(year)
        check_quarter(quarter)
        get_data(year, quarter, 1, GROWTH_COLS, GROWTH_URL)
      end

      ##
      # 获取偿债能力数据
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
      #     currentratio,流动比率
      #     quickratio,速动比率
      #     cashratio,现金比率
      #     icratio,利息支付倍数
      #     sheqratio,股东权益比率
      #     adratio,股东权益增长率
      def get_debtpaying_data(year, quarter)
        check_year(year)
        check_quarter(quarter)
        get_data(year, quarter, 1, DEBTPAYING_COLS, DEBTPAYING_URL)
      end

      ##
      # 获取现金流量数据
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
      #     cf_sales,经营现金净流量对销售收入比率
      #     rateofreturn,资产的经营现金流量回报率
      #     cf_nm,经营现金净流量与净利润的比率
      #     cf_liabilities,经营现金净流量对负债比率
      #     cashflowratio,现金流量比率
      def get_cashflow_data(year, quarter)
        check_year(year)
        check_quarter(quarter)
        get_data(year, quarter, 1, CASHFLOW_COLS, CASHFLOW_URL)
      end

      protected

      def get_data(year, quarter, page, headers, url_format)
        _write_head
        _write_console
        result = []
        result << headers
        result.concat process_data(page, lambda do |p|
          format(url_format, P_TYPE['http'], DOMAINS['vsf'], PAGES['fd'],
                 year, quarter, p, PAGE_NUM[1])
        end)
      end

      def process_data(page, url_generator)
        result = []
        loop do
          url = url_generator.call(page)
          doc = Nokogiri::HTML(open(url), nil, 'gbk')
          doc.css('table.list_table > tr').each do |tr|
            items = []
            tr.css('td').each do |td|
              items << td.content
            end
            result << items
          end
          next_page = doc.css('div.pages > a:last').css('a.nolink')
          break if next_page.size != 0
          page += 1
        end
        result
      end 
    end
  end
end
