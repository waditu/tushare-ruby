module Tushare
  module Datayes
    # 通联数据-市场行情数据
    module Market
      # 高频数据，获取一只或多只证券最新Level1股票信息。 输入一只或多只证券代码，
      # 如000001.XSHG (上证指数） 或000001.XSHE（平安银行）， 还有所选字段， 得到证券的最新交易快照。
      # 证券可以是股票，指数， 部分债券或 基金。
      def tick_rt_snapshot(security_id: '', field: '')
        api_path = format(TICKRTSNAPSHOT, security_id, field)
        fetch_data api_path
      end

      # 高频数据，获取一个指数的成分股的最新Level1股票信息。
      # 输入一个指数的证券代码，如000001.XSHG (上证指数） 或000300.XSHG（沪深300），
      # 还有所选字段， 得到指数成分股的最新交易快照。
      def tick_rt_snapshot_index(security_id: '', field: '')
        api_path = format(TICKRTSNAPSHOTINDEX, security_id, field)
        fetch_data api_path
      end

      # 高频数据，获取一只或多只期货的最新市场信息快照
      def future_tick_rt_snapshot(instrument_id: '', field: '')
        api_path = format(FUTURETICKRTSNAPSHOT, instrument_id, field)
        fetch_data api_path
      end

      # 高频数据，获取一只证券当日内时间段的Level1信息。 证券可以是股票，指数， 部分债券或 基金。
      def tick_rt_intra_day(security_id: '', end_time: '', start_time: '',
                            field: '')
        api_path = format(TICKRTINTRADAY, security_id, end_time, start_time,
                          field)
        fetch_data api_path
      end

      # 高频数据，获取一只证券当日的分钟线信息。
      # 输入一只证券代码，如000001.XSHE（平安银行）， 得到此证券的当日的分钟线。
      # 证券目前是股票，指数，基金和部分债券。分钟线的有效数据上午从09：30 到11：30，下午从13：01到15：00
      def bar_rt_intra_day(security_id: '', end_time: '', start_time: '',
                           field: '')
        api_path = format(BARRTINTRADAY, security_id, end_time, start_time,
                          field)
        fetch_data api_path
      end

      # 高频数据，获取一只证券历史的分钟线信息。
      # 输入一只证券代码，如000001.XSHE（平安银行）， 得到此证券的当日的分钟线。
      # 证券目前是股票，指数，基金和部分债券。分钟线的有效数据上午从09：30 到11：30，下午从13：01到15：00
      def bar_hist_intra_day(security_id: '', date: '', end_time: '',
                             start_time: '', field: '')
        api_path = format(BARHISTONEDAY, security_id, date, end_time,
                          start_time, field)
        fetch_data api_path
      end


      def bar_hist_day_range(security_id: '', start_date: '', end_date: '',
                             field: '')
        api_path = format(BARHISTDAYRANGE, security_id, start_date, end_date,
                          field)
        fetch_data api_path
      end

      # 高频数据，获取一只期货在本清算日内某时间段的行情信息
      def future_tick_rt_intra_day(instrument_id: '', end_time: '',
                                   start_time: '', field: '')
        api_path = format(FUTURETICKRTINTRADAY, instrument_id, end_time,
                          start_time, field)
        fetch_data api_path
      end


      def future_bars_one_day(instrument_id: '', date: '', field: '')
        api_path = format(FUTUREBARINDAY, instrument_id, date, field)
        fetch_data api_path
      end


      def future_bars_day_range(instrument_id: '', start_date: '', end_date: '',
                                field: '')
        api_path = format(FUTUREBARDATERANGE, instrument_id, start_date,
                          end_date, field)
        fetch_data api_path
      end

      # 高频数据，获取多只股票历史上某一天的因子数据
      def stock_factors_one_day(trade_date: '', sec_id: '', ticker: '',
                                field: '')
        api_path = format(STOCKFACTORSONEDAY, trade_date, sec_id, ticker,
                          field)
        fetch_data api_path
      end

      # 高频数据，获取一只股票历史上某一时间段的因子数据
      def stock_factors_date_range(sec_id: '', ticker: '', begin_date: '',
                                   end_date: '', field: '')
        api_path = format(STOCKFACTORSDATERANGE, sec_id, ticker, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 上海证券交易所、深圳证券交易所今日停复牌股票列表。数据更新频率：日。
      def sec_tips(tips_type_cd: '', field: '')
        api_path = format(SECTIPS, tips_type_cd, field)
        fetch_data api_path
      end

      # 获取所有股票某一分钟的分钟线
      def bar_rt_intra_day_one_minute(time: '', field: '')
        api_path = format(BARRTINTRADAYONEMINUTE, time, field)
        fetch_data api_path
      end

      # 获取沪深股票涨跌幅排行
      def equ_rt_rank(desc: '', exchange_cd: '', field: '')
        api_path = format(EQURTRANK, desc, exchange_cd, field)
        fetch_data api_path
      end

      # 获取四大期货交易所主力合约、上海黄金交易所黄金(T+D)、白银(T+D)以及国外主要期货连续合约行情信息。 历史追溯至2006年，每日16:00更新。
      def mkt_m_futd(contract_mark: '', contract_object: '', main_con: '',
                     trade_date: '', end_date: '', start_date: '', field: '')
        api_path = format(MKTMFUTD, contract_mark, contract_object, main_con,
                          trade_date, end_date, start_date, field)
        fetch_data api_path
      end

      # 高频数据，获取期权最新市场信息快照
      def option_tick_rt_snapshot(option_id: '', field: '')
        api_path = format(OPTIONTICKRTSNAPSHOT, option_id, field)
        fetch_data api_path
      end

      # 高频数据，获取当日期货分钟线
      def future_bar_rt_intra_day(instrument_id: '', end_time: '',
                                  start_time: '', field: '')
        api_path = format(FUTUREBARRTINTRADAY, instrument_id, end_time,
                          start_time, field)
        fetch_data api_path
      end

      # 获取行业（证监会行业标准）资金流向，内容包括小单成交金额、中单成交金额、大单成交金额、超大单成交金额、本次成交单总金额等。
      def industry_tick_rt_snapshot(security_id: '', field: '')
        api_path = format(INDUSTRYTICKRTSNAPSHOT, security_id, field)
        fetch_data api_path
      end

      # 获取沪深股票个股最近一次日行情，默认日期区间是过去1年，包含昨收价、开盘价、最高价、最低价、收盘价、成交量、成交金额等字段，每日15:30更新
      def mkt_equd_lately(field: '')
        api_path = format(MKTEQUDLATELY, field)
        fetch_data api_path
      end

      # 获取沪深AB股日行情信息，默认日期区间是过去1年，包含昨收价、开盘价、最高价、最低价、收盘价、成交量、成交金额等字段，每日15:30更新
      def mkt_equd(sec_id: '', ticker: '', trade_date: '', begin_date: '',
                   end_date: '', field: '')
        api_path = format(MKTEQUD, sec_id, ticker, trade_date, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 获取香港交易所股票开、收、高、低，成交等日行情信息，每日17:00前更新
      def mkt_hk_equd(sec_id: '', ticker: '', trade_date: '', begin_date: '',
                      end_date: '', field: '')
        api_path = format(MKTHKEQUD, sec_id, ticker, trade_date, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 获取债券交易开、收、高、低，成交等日行情信息，每日16:00前更新
      def mkt_bondd(sec_id: '', ticker: '', trade_date: '', begin_date: '',
                    end_date: '', field: '')
        api_path = format(MKTBONDD, sec_id, ticker, trade_date, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 获取债券回购交易开、收、高、低，成交等日行情信息，每日16:00前更新
      def mkt_repod(sec_id: '', ticker: '', trade_date: '', begin_date: '',
                    end_date: '', field: '')
        api_path = format(MKTREPOD, sec_id, ticker, trade_date, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 获取基金买卖交易开、收、高、低，成交等日行情信息，每日16:00前更新。
      def mkt_fundd(sec_id: '', ticker: '', trade_date: '', begin_date: '',
                    end_date: '', field: '')
        api_path = format(MKTFUNDD, sec_id, ticker, trade_date, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 获取四大期货交易所期货合约、上海黄金交易所黄金(T+D)、白银(T+D)以及国外主要期货连续合约行情信息。 默认日期区间是过去一年。日线数据第一次更新为交易结束后（如遇线路不稳定情况数据可能存在误差），第二次更新为18:00pm，其中主力合约是以连续三个交易日持仓量最大为基准计算的。
      def mkt_futd(sec_id: '', ticker: '', trade_date: '', begin_date: '',
                   end_date: '', field: '')
        api_path = format(MKTFUTD, sec_id, ticker, trade_date, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 获取期货会员在各交易日期货合约的成交量、成交排名及成交量增减信息，每日16:00前更新。
      def mkt_fut_mtr(sec_id: '', ticker: '', begin_date: '', end_date: '',
                      field: '')
        api_path = format(MKTFUTMTR, sec_id, ticker, begin_date, end_date,
                          field)
        fetch_data api_path
      end

      # 获取期货会员在各交易日期货合约的空头持仓、排名及空头持仓增减信息，每日16:00前更新。
      def mkt_fut_msr(sec_id: '', ticker: '', begin_date: '', end_date: '',
                      field: '')
        api_path = format(MKTFUTMSR, sec_id, ticker, begin_date, end_date,
                          field)
        fetch_data api_path
      end

      # 获取期货会员在各交易日期货合约的多头持仓、排名及多头持仓增减信息，每日16:00前更新。
      def mkt_fut_mlr(sec_id: '', ticker: '', begin_date: '', end_date: '',
                      field: '')
        api_path = format(MKTFUTMLR, sec_id, ticker, begin_date, end_date,
                          field)
        fetch_data api_path
      end

      # 获取指数日线行情信息，包含昨收价、开盘价、最高价、最低价、收盘价、成交量、成交金额等字段，默认日期区间是过去1年，其中沪深指数行情每日15:30更新。
      def mkt_idxd(index_id: '', ticker: '', trade_date: '', begin_date: '',
                   end_date: '', field: '')
        api_path = format(MKTIDXD, index_id, ticker, trade_date, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 获取沪深交易所交易日大宗交易成交价，成交量等信息。
      def mkt_blockd(sec_id: '', ticker: '', trade_date: '', asset_class: '',
                     begin_date: '', end_date: '', field: '')
        api_path = format(MKTBLOCKD, sec_id, ticker, trade_date, asset_class,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 主要记录上交所期权行情，包含昨结算、昨收盘、开盘价、最高价、最低价、收盘价、结算价、成交量、成交金额、持仓量等字段，每日16:00前更新。
      def mkt_optd(opt_id: '', sec_id: '', ticker: '', trade_date: '',
                   begin_date: '', end_date: '', field: '')
        api_path = format(MKTOPTD, opt_id, sec_id, ticker, trade_date,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 获取获取沪深A股和B股前复权日行情信息，包含前复权昨收价、前复权开盘价、前复权最高价、前复权最低价、前复权收盘价，每日开盘前更新数据。
      def mkt_equd_adj(sec_id: '', ticker: '', trade_date: '', begin_date: '',
                       end_date: '', field: '')
        api_path = format(MKTEQUDADJ, sec_id, ticker, trade_date, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 获取获取沪深A股和B股用来调整行情的前复权因子数据，包含除权除息日、除权除息事项具体数据、本次复权因子、累积复权因子以及因子调整的截止日期。该因子用来调整历史行情，不作为预测使用，于除权除息日进行计算调整。
      def mkt_adjf(sec_id: '', ticker: '', field: '')
        api_path = format(MKTADJF, sec_id, ticker, field)
        fetch_data api_path
      end

      # 获取四大期货交易所期货合约行情信息。 默认日期区间是过去一年。日线数据第一次更新为交易结束后（如遇线路不稳定情况数据可能存在误差），第二次更新为18:00pm，其中主力合约是以成交量最大为基准计算的。
      def mkt_futd_vol(sec_id: '', ticker: '', begin_date: '', end_date: '',
                       field: '')
        api_path = format(MKTFUTDVOL, sec_id, ticker, begin_date, end_date,
                          field)
        fetch_data api_path
      end

      # 主要记录盘前每日个股及基金涨跌停板价格，每日9:00更新
      def mkt_limit(sec_id: '', ticker: '', trade_date: '', field: '')
        api_path = format(MKTLIMIT, sec_id, ticker, trade_date, field)
        fetch_data api_path
      end

      # 主要记录基金每日后复权行情，包括开高低收、成交量、成交价格等
      def mkt_fundd_adj_af(sec_id: '', ticker: '', begin_date: '', end_date: '',
                           field: '')
        api_path = format(MKTFUNDDADJAF, sec_id, ticker, begin_date, end_date,
                          field)
        fetch_data api_path
      end
    end
  end
end
