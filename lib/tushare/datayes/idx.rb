module Tushare
  module Datayes
    # 通联数据-指数信息
    module Idx
      # 获取国内外指数的基本要素信息，包括指数名称、指数代码、发布机构、发布日期、基日、基点等。
      def idx(sec_id: '', ticker: '', field: '')
        api_path = format(IDX, sec_id, ticker, field)
        fetch_data api_path
      end

      # 获取国内外指数的成分构成情况，包括指数成分股名称、成分股代码、入选日期、剔除日期等。
      def idx_cons(sec_id: '', ticker: '', into_date: '', is_new: '',
                   field: '')
        api_path = format(IDXCONS, sec_id, ticker, into_date, is_new, field)
        fetch_data api_path
      end
    end
  end
end
