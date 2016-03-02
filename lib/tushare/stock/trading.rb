require 'tushare/util' 

module Tushare 

  module Stock 
    include Tushare::Util 

    ## 
    #      获取个股历史交易记录
    #  Parameters
    #  ------
    #    code:string
    #                股票代码 e.g. 600848
    #    start_date:string
    #                开始日期 format：YYYY-MM-DD 为空时取到API所提供的最早日期数据
    #    end_date:string
    #                结束日期 format：YYYY-MM-DD 为空时取到最近一个交易日数据
    #    ktype：string
    #                数据类型，D=日k线 W=周 M=月 5=5分钟 15=15分钟 30=30分钟 60=60分钟，默认为D
    #    retry_count : int, 默认 3
    #               如遇网络等问题重复执行的次数 
    #    pause : int, 默认 0
    #              重复请求数据过程中暂停的秒数，防止请求间隔时间太短出现的问题
    #  return
    #  -------
    #    DataFrame
    #        属性:日期 ，开盘价， 最高价， 收盘价， 最低价， 成交量， 价格变动 ，涨跌幅，5日均价，10日均价，20日均价，5日均量，10日均量，20日均量，换手率
    def get_hist_data(code, start_date="", end_date="", ktype = 'D', retry_count = 3, pause = 0.001, ascending = false)
      symbol_code = _code_to_symbol(code)
      raise 'invalid code' if symbol_code == ""

      if K_LABELS.include?(ktype.upcase)
        url = sprintf(DAY_PRICE_URL, P_TYPE["http"], DOMAINS["ifeng"], K_TYPE[ktype.upcase], symbol_code)
      elsif K_MIN_LABELS.include?(ktype)
        url = sprintf(DAY_PRICE_MIN_URL, P_TYPE["http"], DOMAINS["ifeng"], symbol_code, ktype)
      else 
        raise 'ktype input error.'
      end 

      if INDEX_LABELS.include?(code) #& (K_LABELS.include?(ktype.upcase) || K_MIN_LABELS.include?(ktype))
        cols = INX_DAY_PRICE_COLUMNS 
      else 
        cols = DAY_PRICE_COLUMNS
      end

      #puts url 

      resp = HTTParty.get(url)
      if resp.code.to_s == "200"
        records = JSON.parse(resp.body)["record"]
        if records.size > 0
          cols = INX_DAY_PRICE_COLUMNS if records.first.size == 14

          records.reverse! if ascending == false 
          if start_date != '' and end_date != ''
            records = records.select{|x| Time.parse(x[0]) <= Time.parse("#{end_date} 23:59") and Time.parse(x[0]) >= Time.parse("#{start_date} 00:00")}
          end

          records.map{|r| Hash[cols.zip(r)]}
        end
      else 
        []
      end
    end 

  end 

end
