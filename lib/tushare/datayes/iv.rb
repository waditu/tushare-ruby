module Tushare
  module Datayes
    # 通联数据
    module IV
      # 原始隐含波动率,包括期权价格、累计成交量、持仓量、隐含波动率等。
      def der_iv(begin_date: '', end_date: '', opt_id: '', sec_id: '',
                 field: '')
        api_path = format(DERIV, begin_date, end_date, opt_id, sec_id, field)
        fetch_data api_path
      end

      # 历史波动率，各个时间段的收盘－收盘历史波动率。
      def der_iv_hv(begin_date: '', end_date: '', sec_id: '', period: '',
                    field: '')
        api_path = format(DERIVHV, begin_date, end_date, sec_id, period, field)
        fetch_data api_path
      end

      # 隐含波动率指数，衡量30天至1080天到期平价期权的平均波动性的主要方法。
      def der_iv_index(begin_date: '', end_date: '', sec_id: '', period: '',
                       field: '')
        api_path = format(DERIVINDEX, begin_date, end_date, sec_id, period,
                          field)
        fetch_data api_path
      end

      # 隐含波动率曲面(基于参数平滑曲线)，基于delta（0.1至0.9,0.05升步）和到期日（1个月至3年）而标准化的曲面。
      def der_iv_ivp_delta(begin_date: '', end_date: '', sec_id: '', delta: '',
                           period: '', field: '')
        api_path = format(DERIVIVPDELTA, begin_date, end_date, sec_id, delta,
                          period, field)
        fetch_data api_path
      end

      # 隐含波动率参数化曲面，由二阶方程波动曲线在每个到期日平滑后的曲面（a,b,c曲线系数）
      def der_iv_param(begin_date: '', end_date: '', sec_id: '', exp_date: '',
                       field: '')
        api_path = format(DERIVPARAM, begin_date, end_date, sec_id, exp_date,
                          field)
        fetch_data api_path
      end

      # 隐含波动率曲面(基于原始隐含波动率)，基于delta（0.1至0.9,0.05升步）和到期日（1个月至3年）而标准化的曲面。
      def der_iv_raw_delta(begin_date: '', end_date: '', sec_id: '', delta: '',
                           period: '', field: '')
        api_path = format(DERIVRAWDELTA, begin_date, end_date, sec_id, delta,
                          period, field)
        fetch_data api_path
      end

      # 隐含波动率曲面(在值程度)，基于在值程度而标准化的曲面。执行价格区间在-60%到+60%，5%升步，到期区间为1个月至3年。
      def der_iv_surface(begin_date: '', end_date: '', sec_id: '',
                         contract_type: '', field: '')
        api_path = format(DERIVSURFACE, begin_date, end_date, sec_id,
                          contract_type, field)
        fetch_data api_path
      end
    end
  end
end
