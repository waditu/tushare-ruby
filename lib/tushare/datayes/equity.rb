module Tushare
  module Datayes
    # 通联数据-沪深股票信息
    module Equity
      # 获取股票的基本信息，包含股票交易代码及其简称、股票类型、上市状态、上市板块、上市日期等；
      # 上市状态为最新数据，不显示历史变动信息。
      def equ(equ_type_cd: '', sec_id: '', ticker: '', list_status_cd: '',
              field: '')
        api_path = format(EQU, equ_type_cd, sec_id, ticker, list_status_cd,
                          field)
        fetch_data api_path
      end

      # 获取股票历次配股的基本信息，
      # 包含每次配股方案的内容、方案进度、历史配股预案公布次数以及最终是否配股成功。
      def equ_allot(is_allotment: '', sec_id: '', ticker: '',
                    begin_date: '', end_date: '', field: '')
        api_path = format(EQUALLOT, is_allotment, sec_id, ticker, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 获取股票历次分红(派现、送股、转增股)的基本信息，
      # 包含历次分红预案的内容、实施进展情况以及历史宣告分红次数。
      def equ_div(event_process_cd: '', ex_div_date: '', sec_id: '', ticker: '',
                  begin_date: '', end_date: '', field: '')
        api_path = format(EQUDIV, event_process_cd, ex_div_date, sec_id, ticker,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 输入证券ID或股票交易代码，获取股票所属行业分类
      def equ_industry(industry: '', industry_id: '', industry_version_cd: '',
                       sec_id: '', ticker: '', into_date: '', field: '')
        api_path = format(EQUINDUSTRY, industry, industry_id,
                          industry_version_cd, sec_id, ticker, into_date,
                          field)
        fetch_data api_path
      end

      # 获取股票首次公开发行上市的基本信息，包含股票首次公开发行的进程及发行结果。
      def equ_ipo(event_process_cd: '', sec_id: '', ticker: '', field: '')
        api_path = format(EQUIPO, event_process_cd, sec_id, ticker, field)
        fetch_data api_path
      end

      # 获取股票股权分置改革的基本信息，包含股改进程、股改实施方案以及流通股的变动情况。
      def equ_ref(sec_id: '', ticker: '', begin_date: '', end_date: '',
                  event_process_cd: '', field: '')
        api_path = format(EQUREF, sec_id, ticker, begin_date, end_date,
                          event_process_cd, field)
        fetch_data api_path
      end

      # 获取股票每日回报率的基本信息，包含交易当天的上市状态、日行情以及除权除息事项的基本数据。
      def equ_retud(list_status_cd: '', sec_id: '', ticker: '',
                    begin_date: '', daily_return_no_reinv_lower: '',
                    daily_return_no_reinv_upper: '',
                    daily_return_reinv_lower: '',
                    daily_return_reinv_upper: '', end_date: '',
                    is_chg_pctl: '', field: '')
        api_path = format(EQURETUD, list_status_cd, sec_id, ticker, begin_date,
                          daily_return_no_reinv_lower,
                          daily_return_no_reinv_upper, daily_return_reinv_lower,
                          daily_return_reinv_upper, end_date, is_chg_pctl,
                          field)
        fetch_data api_path
      end

      # 获取股票进行股本拆细或者缩股的基本信息。
      def equ_splits(sec_id: '', ticker: '', begin_date: '', end_date: '',
                     field: '')
        api_path = format(EQUSPLITS, sec_id, ticker, begin_date, end_date, field)
        fetch_data api_path
      end

      # 获取上海、深圳交易所公布的每个交易日的融资融券交易汇总的信息，
      # 包括成交量、成交金额。本交易日可获取前一交易日的数据。
      def fst_total(begin_date: '', end_date: '', exchange_cd: '',
                    field: '')
        api_path = format(FSTTOTAL, begin_date, end_date, exchange_cd, field)
        fetch_data api_path
      end

      # 获取上海、深圳交易所公布的每个交易日的融资融券交易具体的信息，
      # 包括标的证券信息、融资融券金额以及数量方面的数据。本交易日可获取前一交易日的数据。
      def fst_detail(sec_id: '', ticker: '', begin_date: '', end_date: '',
                     field: '')
        api_path = format(FSTDETAIL, sec_id, ticker, begin_date, end_date,
                          field)
        fetch_data api_path
      end

      # 获取上市公司股本结构及历次股本变动数据。
      def equ_share(sec_id: '', ticker: '', begin_date: '', end_date: '',
                    party_id: '', field: '')
        api_path = format(EQUSHARE, sec_id, ticker, begin_date, end_date,
                          party_id, field)
        fetch_data api_path
      end

      # 通过输入股票ID（通联编制）或股票交易代码（支持多值输入，最大支持50只），
      # 选择查询开始日期与结束日期，获取股票在一段时间ST标记信息。
      def sec_st(sec_id: '', ticker: '', begin_date: '', end_date: '',
                 field: '')
        api_path = format(SECST, sec_id, ticker, begin_date, end_date, field)
        fetch_data api_path
      end
    end
  end
end
