module Tushare
  module Datayes
    # 通联数据-港股信息
    module HKEquity
      # 获取香港交易所上市股票的基本信息，包含股票交易代码及其简称、股票类型、上市状态、上市板块、上市日期等；上市状态为最新状态。
      def hk_equ(list_status_cd: '', sec_id: '', ticker: '', field: '')
        api_path = format(HKEQU, list_status_cd, sec_id, ticker, field)
        fetch_data api_path
      end

      # 获取香港交易所上市公司行为，包含有首发、现金增资、分红、拆细等。
      def hk_equ_ca(sec_id: '', ticker: '', event_type_cd: '', field: '')
        api_path = format(HKEQUCA, sec_id, ticker, event_type_cd, field)
        fetch_data api_path
      end
    end
  end
end
