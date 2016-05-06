module Tushare
  module Datayes
    # 通联数据-债券信息
    module Bond
      # 债券的基本面信息，涵盖了债券计息方式、付息频率、起息日、到期日、兑付形式等。
      def bond(sec_id: '', ticker: '', field: '')
        fetch_data format(BOND, sec_id, ticker, field)
      end

      # 债券在每个计息周期付息兑付的相关数据。日期区间默认为过去一年。
      def bond_cf(sec_id: '', ticker: '', begin_date: '', cash_type_cd: '',
                  end_date: '', field: '')
        api_path = format(BONDCF, sec_id, ticker, begin_date, cash_type_cd,
                          end_date, field)
        fetch_data api_path
      end

      # 固定利率债券、浮动利率债券每个计息周期的票面利率，包括分段计息的具体利率。
      def bond_coupon(sec_id: '', ticker: '', field: '')
        fetch_data format(BONDCOUPON, sec_id, ticker, field)
      end

      # 收录债券担保信息，如担保人、担保类型、担保方式、担保期限等。
      def bond_guar(sec_id: '', ticker: '', guar_mode_cd: '', field: '')
        fetch_data format(BONDGUAR, sec_id, ticker, guar_mode_cd, field)
      end

      # 债券在一级市场发行信息，记录的要素包括有发行方式、发行价格、当次发行规模等
      def bond_issue(sec_id: '', ticker: '', raise_mode_cd: '', field: '')
        fetch_data format(BONDISSUE, sec_id, ticker, raise_mode_cd, field)
      end

      # 记录债券在发行时约定在存续期内投资人或发行人可行使的选择权，如债券回售、债券赎回等。
      def bond_option(sec_id: '', ticker: '', field: '')
        fetch_data format(BONDOPTION, sec_id, ticker, field)
      end

      # 债券的长期评级、短期评级以及历史评级变动记录。
      def bond_rating(sec_id: '', ticker: '', begin_date: '', end_date: '',
                      field: '')
        api_path = format(BONDRATING, sec_id, ticker, begin_date, end_date,
                          field)
        fetch_data api_path
      end

      # 各评级机构公布的债券担保人的信用评级数据及历史变动记录。
      def guar_rating(sec_id: '', ticker: '', begin_date: '', end_date: '',
                      field: '')
        api_path = format(GUARRATING, sec_id, ticker, begin_date, end_date,
                          field)
        fetch_data api_path
      end

      # 各评级机构公布的债券发行人的信用评级数据及历史变动记录。
      def issuer_rating(sec_id: '', ticker: '', begin_date: '', end_date: '',
                        field: '')
        api_path = format(ISSUERRATING, sec_id, ticker, begin_date, end_date,
                          field)
        fetch_data api_path
      end

      # 债券回购基本面信息，
      # 涵盖了回购交易代码、回购期限、申报价格最小变动单位(RMB)、申报参与价格单位(RMB)等。
      def repo(sec_id: '', ticker: '', field: '')
        fetch_data format(REPO, sec_id, ticker, field)
      end
    end
  end
end
