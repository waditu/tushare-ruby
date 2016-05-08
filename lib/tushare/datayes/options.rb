module Tushare
  module Datayes
    # 通联数据-期权信息
    module Options
      # 获取期权合约编码，交易代码，交易市场，标的等相关信息
      def opt(contract_status: '', opt_id: '', sec_id: '', ticker: '',
              var_sec_id: '', varticker: '', field: '')
        api_path = format(OPT, contract_status, opt_id, sec_id, ticker,
                          var_sec_id, varticker, field)
        fetch_data api_path
      end

      # 获取期权品种名称、生效日期、履约方式、交割方式、申报单位等相关信息。
      def opt_var(exchange_cd: '', sec_id: '', ticker: '', contract_type: '',
                  exer_type: '', field: '')
        api_path = format(OPTVAR, exchange_cd, sec_id, ticker, contract_type,
                          exer_type, field)
        fetch_data api_path
      end
    end
  end
end
