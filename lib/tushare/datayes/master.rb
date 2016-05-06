module Tushare
  module Datayes
    # 通联数据-证券概况
    module Master
      # 通过机构partyID,或证券简称拼音cnSpell,或证券交易代码ticker，
      # 检索证券ID（证券在数据结构中的一个唯一识别的编码），
      # 也可通过证券简称拼音cnSpell检索证券交易代码ticker等；同时可以获取输入证券的基本上市信息，如交易市场，上市状态，交易币种，ISIN编码等。
      def sec_id(asset_class: '', cn_spell: '', party_id: '', ticker: '',
                 field: '')
        api_path = format(SECID, asset_class, cn_spell, party_id, ticker, field)
        fetch_data api_path
      end

      # 记录了上海证券交易所,深圳证券交易所,中国银行间市场,大连商品交易所,郑州商品交易所,上海期货交易所,
      # 中国金融期货交易所和香港交易所等交易所在日历日期当天是否开市的信息，
      # 其中上证、深证记录了自成立以来的全部日期是否开始信息。
      # 各交易日节假日安排通知发布当天即更新数据。
      def trade_cal(exchange_cd: '', begin_date: '', end_date: '',
                    field: '')
        api_path = format(TRADECAL, exchange_cd, begin_date, end_date, field)
        fetch_data api_path
      end

      # 输入行业分类通联编码(如，010303表示申万行业分类2014版)
      # 或输入一个行业分类标准名称，获取行业分类标准下行业划分
      def industry(industry_version: '', industry_version_cd: '',
                   industry_level: '', is_new: '', field: '')
        api_path = format(INDUSTRY, industry_version, industry_version_cd,
                          industry_level, is_new, field)
        fetch_data api_path
      end

      # 记录证券每个分类的成分，证券分类可通过在getSecType获取。
      def sec_type_rel(sec_id: '', ticker: '', type_id: '', field: '')
        fetch_data format(SECTYPEREL, sec_id, ticker, type_id, field)
      end

      # 根据拼音或股票代码，匹配股票代码、名称。包含正在上市的全部沪深股票。
      def equ_info(ticker: '', field: '')
        fetch_data format(EQUINFO, ticker, field)
      end

      # 获取沪深股票地域分类，以注册地所在行政区域为标准。
      def sec_type_region_rel(sec_id: '', ticker: '', type_id: '',
                              field: '')
        fetch_data format(SECTYPEREGIONREL, sec_id, ticker, type_id, field)
      end

      # 证券分类列表，一级分类包含有沪深股票、港股、基金、债券、期货、期权等，
      # 每个分类又细分有不同类型；可一次获取全部分类。
      def sec_type(field: '')
        fetch_data format(SECTYPE, field)
      end

      # 获取中国地域分类，以行政划分为标准。
      def sec_type_region(field: '')
        fetch_data format(SECTYPEREGION, field)
      end

      # 各api接口有枚举值特性的输出列，
      # 如getSecID输出项exchangeCD值，编码分别代表的是什么市场，所有枚举值都可以在这个接口获取。
      def sys_code(code_type_id: '', value_cd: '', field: '')
        fetch_data format(SYSCODE, code_type_id, value_cd, field)
      end
    end
  end
end
