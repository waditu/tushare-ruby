module Tushare
  module Datayes
    # 通联数据-期货信息
    module Future
      # 获取国内四大期货交易所期货合约的基本要素信息，
      # 包括合约名称、合约代码、合约类型、合约标的、报价单位、最小变动价位、涨跌停板幅度、交易货币、
      # 合约乘数、交易保证金、上市日期、最后交易日、交割日期、交割方式、交易手续费、交割手续费、挂牌基准价、合约状态等。
      def futu(exchange_cd: '', sec_id: '', ticker: '', contract_object: '',
               field: '')
        api_path = format(FUTU, exchange_cd, sec_id, ticker, contract_object,
                          field)
        fetch_data api_path
      end

      # 获取国债期货转换因子信息，包括合约可交割国债名称、可交割国债交易代码、转换因子等。
      def futu_convf(sec_id: '', ticker: '', field: '')
        api_path = format(FUTUCONVF, sec_id, ticker, field)
        fetch_data api_path
      end
    end
  end
end
