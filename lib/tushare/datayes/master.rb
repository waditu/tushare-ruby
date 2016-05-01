module Tushare
  module Datayes
    # 通联数据-证券概况
    module Master
      # 通过机构partyID,或证券简称拼音cnSpell,或证券交易代码ticker，
      # 检索证券ID（证券在数据结构中的一个唯一识别的编码），
      # 也可通过证券简称拼音cnSpell检索证券交易代码ticker等；同时可以获取输入证券的基本上市信息，如交易市场，上市状态，交易币种，ISIN编码等。
      def sec_id(assetClass = '', cnSpell = '', partyID = '', ticker = '',
                 field = '')
        api_path = format(SECID, assetClass, cnSpell, partyID, ticker, field)
        fetch_data(api_path)
      end
    end
  end
end
