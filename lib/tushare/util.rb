require 'net/ftp'

module Tushare
  K_LABELS = ['D', 'W', 'M']
  K_MIN_LABELS = ['5', '15', '30', '60']
  K_TYPE = {'D'=> 'akdaily', 'W'=> 'akweekly', 'M'=> 'akmonthly'}
  INDEX_LABELS = %w(sh sz hs300 sz50 cyb zxb zx300 zh500).freeze
  INDEX_LIST = {
    'sh' => 'sh000001',
    'sz' => 'sz399001',
    'hs300' => 'sz399300',
    'sz50' => 'sh000016',
    'zxb' => 'sz399005',
    'cyb' => 'sz399006',
    'zx300' => 'sz399008',
    'zh500' => 'sh000905'
  }.freeze
  P_TYPE = {
    'http' => 'http://',
    'ftp' => 'ftp://'
  }.freeze
  PAGE_NUM = [38, 60, 80, 100].freeze
  #FORMAT = lambda x: '%.2f' % x
  DOMAINS = {
    'sina' => 'sina.com.cn',
    'sinahq' => 'sinajs.cn',
    'ifeng' => 'ifeng.com',
    'sf' => 'finance.sina.com.cn',
    'vsf' => 'vip.stock.finance.sina.com.cn',
    'idx' => 'www.csindex.com.cn',
    '163' => 'money.163.com',
    'em' => 'eastmoney.com',
    'sseq' => 'query.sse.com.cn',
    'sse' => 'www.sse.com.cn',
    'szse' => 'www.szse.cn',
    'oss' => '218.244.146.57',
    'idxip' => '115.29.204.48',
    'shibor' => 'www.shibor.org',
    'mbox' => 'www.cbooo.cn'
  }.freeze
  PAGES = {
    'fd' => 'index.phtml',
    'dl' => 'downxls.php',
    'jv' => 'json_v2.php',
    'cpt' => 'newFLJK.php',
    'ids' => 'newSinaHy.php',
    'lnews' => 'rollnews_ch_out_interface.php',
    'ntinfo' => 'vCB_BulletinGather.php',
    'hs300b' => '000300cons.xls',
    'hs300w' => '000300closeweight.xls',
    'sz50b' => '000016cons.xls',
    'dp' => 'all_fpya.php',
    '163dp' => 'fpyg.html',
    'emxsg' => 'JS.aspx',
    '163fh' => 'jjcgph.php',
    'newstock' => 'vRPD_NewStockIssue.php',
    'zz500b' => '000905cons.xls',
    'zz500wt' => '000905closeweight.xls',
    't_ticks' => 'vMS_tradedetail.php',
    'dw' => 'downLoad.html',
    'qmd' => 'queryMargin.do',
    'szsefc' => 'ShowReport.szse',
    'ssecq' => 'commonQuery.do',
    'sinadd' => 'cn_bill_download.php',
    'ids_sw' => 'SwHy.php'
  }.freeze
  TICK_COLUMNS = ['time', 'price', 'change', 'volume', 'amount', 'type']
  TODAY_TICK_COLUMNS = ['time', 'price', 'pchange', 'change', 'volume', 'amount', 'type']
  DAY_TRADING_COLUMNS = ['code', 'symbol', 'name', 'changepercent',
                         'trade', 'open', 'high', 'low', 'settlement', 'volume', 'turnoverratio']
  REPORT_COLS = ['code', 'name', 'eps', 'eps_yoy', 'bvps', 'roe',
                 'epcf', 'net_profits', 'profits_yoy', 'distrib', 'report_date']
  FORECAST_COLS = %w(code name type report_date pre_eps range).freeze
  PROFIT_COLS = ['code', 'name', 'roe', 'net_profit_ratio',
                 'gross_profit_rate', 'net_profits', 'eps', 'business_income', 'bips']
  OPERATION_COLS = ['code', 'name', 'arturnover', 'arturndays', 'inventory_turnover',
                    'inventory_days', 'currentasset_turnover', 'currentasset_days']
  GROWTH_COLS = ['code', 'name', 'mbrg', 'nprg', 'nav', 'targ', 'epsg', 'seg']
  DEBTPAYING_COLS = ['code', 'name', 'currentratio',
                     'quickratio', 'cashratio', 'icratio', 'sheqratio', 'adratio']
  CASHFLOW_COLS = ['code', 'name', 'cf_sales', 'rateofreturn',
                   'cf_nm', 'cf_liabilities', 'cashflowratio']
  DAY_PRICE_COLUMNS = ['date', 'open', 'high', 'close', 'low', 'volume', 'price_change', 'p_change',
                       'ma5', 'ma10', 'ma20', 'v_ma5', 'v_ma10', 'v_ma20', 'turnover']
  INX_DAY_PRICE_COLUMNS = ['date', 'open', 'high', 'close', 'low', 'volume', 'price_change', 'p_change',
                           'ma5', 'ma10', 'ma20', 'v_ma5', 'v_ma10', 'v_ma20']
  LIVE_DATA_COLS = %w(name open pre_close price high low bid ask volume amount
                      b1_v b1_p b2_v b2_p b3_v b3_p b4_v b4_p b5_v b5_p
                      a1_v a1_p a2_v a2_p a3_v a3_p a4_v a4_p a5_v a5_p date
                      time s).freeze
  FOR_CLASSIFY_B_COLS = %w(code name).freeze
  FOR_CLASSIFY_W_COLS = %w(date code weight).freeze
  THE_FIELDS = %w(code symbol name changepercent trade open high low settlement
                  volume turnoverratio).freeze
  TICK_PRICE_URL = '%smarket.%s/%s?date=%s&symbol=%s'
  TODAY_TICKS_PAGE_URL = '%s%s/quotes_service/api/%s/CN_Transactions.getAllPageTime?date=%s&symbol=%s'
  TODAY_TICKS_URL = '%s%s/quotes_service/view/%s?symbol=%s&date=%s&page=%s'
  DAY_PRICE_URL = '%sapi.finance.%s/%s/?code=%s&type=last'
  LIVE_DATA_URL = '%shq.%s/rn=%s&list=%s'.freeze
  DAY_PRICE_MIN_URL = '%sapi.finance.%s/akmin?scode=%s&type=%s'
  SINA_DAY_PRICE_URL = '%s%s/quotes_service/api/%s/Market_Center.getHQNodeData?num=80&sort=changepercent&asc=0&node=hs_a&symbol=&_s_r_a=page&page=%s'
  REPORT_URL = '%s%s/q/go.php/vFinanceAnalyze/kind/mainindex/%s?s_i=&s_a=&s_c=&reportdate=%s&quarter=%s&p=%s&num=%s'
  FORECAST_URL = '%s%s/q/go.php/vFinanceAnalyze/kind/performance/%s?s_i=&s_a=&s_c=&s_type=&reportdate=%s&quarter=%s&p=%s&num=%s'.freeze
  PROFIT_URL = '%s%s/q/go.php/vFinanceAnalyze/kind/profit/%s?s_i=&s_a=&s_c=&reportdate=%s&quarter=%s&p=%s&num=%s'
  OPERATION_URL = '%s%s/q/go.php/vFinanceAnalyze/kind/operation/%s?s_i=&s_a=&s_c=&reportdate=%s&quarter=%s&p=%s&num=%s'
  GROWTH_URL = '%s%s/q/go.php/vFinanceAnalyze/kind/grow/%s?s_i=&s_a=&s_c=&reportdate=%s&quarter=%s&p=%s&num=%s'
  DEBTPAYING_URL = '%s%s/q/go.php/vFinanceAnalyze/kind/debtpaying/%s?s_i=&s_a=&s_c=&reportdate=%s&quarter=%s&p=%s&num=%s'
  CASHFLOW_URL = '%s%s/q/go.php/vFinanceAnalyze/kind/cashflow/%s?s_i=&s_a=&s_c=&reportdate=%s&quarter=%s&p=%s&num=%s'
  SHIBOR_TYPE = {
    'Shibor' => 'Shibor数据',
    'Quote' => '报价数据',
    'Tendency' => 'Shibor均值数据',
    'LPR' => 'LPR数据',
    'LPR_Tendency' => 'LPR均值数据'
  }.freeze
  SHIBOR_DATA_URL = '%s%s/shibor/web/html/%s?nameNew=Historical_%s_Data_%s.xls&downLoadPath=data&nameOld=%s%s.xls&shiborSrc=http://www.shibor.org/shibor/'.freeze
  ALL_STOCK_BASICS_FILE = '%s%s/static/all.csv' % [P_TYPE['http'], DOMAINS['oss']]
  SINA_CONCEPTS_INDEX_URL = '%smoney.%s/q/view/%s?param=class'.freeze
  SINA_INDUSTRY_INDEX_URL = '%s%s/q/view/%s'.freeze
  SINA_DATA_DETAIL_URL = '%s%s/quotes_service/api/%s/Market_Center.getHQNodeData?page=1&num=400&sort=symbol&asc=1&node=%s&symbol=&_s_r_a=page'.freeze
  INDEX_C_COMM = 'sseportal/ps/zhs/hqjt/csi'
  HS300_CLASSIFY_URL_FTP = '%s%s/webdata/%s'.freeze
  HS300_CLASSIFY_URL_HTTP = '%s%s/%s/%s'
  HIST_FQ_URL = '%s%s/corp/go.php/vMS_FuQuanMarketHistory/stockid/%s.phtml?year=%s&jidu=%s'.freeze
  HIST_INDEX_URL = '%s%s/corp/go.php/vMS_MarketHistory/stockid/%s/type/S.phtml?year=%s&jidu=%s'.freeze
  HIST_FQ_FACTOR_URL = '%s%s/api/json.php/BasicStockSrv.getStockFuQuanData?symbol=%s&type=hfq'.freeze
  INDEX_HQ_URL = '''%shq.%s/rn=xppzh&list=sh000001,sh000002,sh000003,sh000008,sh000009,sh000010,sh000011,sh000012,sh000016,sh000017,sh000300,sz399001,sz399002,sz399003,sz399004,sz399005,sz399006,sz399100,sz399101,sz399106,sz399107,sz399108,sz399333,sz399606'''.freeze
  SSEQ_CQ_REF_URL = '%s%s/assortment/stock/list/name'.freeze
  ALL_STK_URL = '%s%s/all.csv'
  SINA_DD = '%s%s/quotes_service/view/%s?symbol=%s&num=60&page=1&sort=ticktime&asc=0&volume=%s&amount=0&type=0&day=%s'
  BOX = 'boxOffice'
  MOVIE_BOX = '%s%s/%s/GetHourBoxOffice?d=%s'.freeze
  BOXOFFICE_DAY = '%s%s/%s/GetDayBoxOffice?num=%s&d=%s'.freeze
  BOXOFFICE_MONTH = '%s%s/%s/getMonthBox?sdate=%s'.freeze
  BOXOFFICE_CBD = '%s%s/%s/getCBD?pIndex=%s&dt=%s'.freeze
  SHIBOR_COLS = %w(date ON 1W 2W 1M 3M 6M 9M 1Y).freeze
  QUOTE_COLS = %w(date bank ON_B ON_A 1W_B 1W_A 2W_B 2W_A 1M_B 1M_A
                  3M_B 3M_A 6M_B 6M_A 9M_B 9M_A 1Y_B 1Y_A).freeze
  SHIBOR_MA_COLS = %w(date ON_5 ON_10 ON_20 1W_5 1W_10 1W_20 2W_5 2W_10 2W_20
                      1M_5 1M_10 1M_20 3M_5 3M_10 3M_20 6M_5 6M_10 6M_20
                      9M_5 9M_10 9M_20 1Y_5 1Y_10 1Y_20).freeze
  LPR_COLS = %w(date 1Y).freeze
  LPR_MA_COLS = %w(date 1Y_5 1Y_10 1Y_20).freeze
  INDEX_HEADER = 'code,name,open,preclose,close,high,low,0,0,volume,amount,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,d,c,3\n'.freeze
  INDEX_COLS = %w(code name change open preclose close high low volume amount).freeze
  HIST_FQ_COLS = %w(date open high close low volume amount factor).freeze
  SINA_DD_COLS = ['code', 'name', 'time', 'price', 'volume', 'preprice', 'type']
  HIST_FQ_FACTOR_COLS = ['code','value']
  DATA_GETTING_TIPS = '[Getting data:]'
  DATA_GETTING_FLAG = '#'
  DATA_ROWS_TIPS = '%s rows data found.Please wait for a moment.'
  DATA_INPUT_ERROR_MSG = 'date input error.'
  NETWORK_URL_ERROR_MSG = '获取失败，请检查网络和URL'
  DATE_CHK_MSG = '年度输入错误：请输入1989年以后的年份数字，格式：YYYY'
  DATE_CHK_Q_MSG = '季度输入错误：请输入1、2、3或4数字'
  TOP_PARAS_MSG = 'top有误，请输入整数或all.'
  LHB_MSG = '周期输入有误，请输入数字5、10、30或60'.freeze
  TOKEN_F_P = 'tk.csv'
  TOKEN_ERR_MSG = '请设置通联数据接口的token凭证码'
  BOX_INPUT_ERR_MSG = '请输入YYYY-MM格式的年月数据'.freeze
  DP_URL = '%sapp.finance.%s/data/stock/%s?day=&page=%s'
  DP_163_URL = '%squotes.%s/data/caibao/%s?reportdate=%s&sort=declaredate&order=desc&page=%s'.freeze
  FUND_HOLDS_URL = '%squotes.%s/hs/marketdata/service/%s?host=/hs/marketdata/service/%s&page=%s&query=start:%s;end:%s&order=desc&count=60&type=query&req=%s'
  XSG_URL = '%sdatainterface.%s/EM_DataCenter/%s?type=FD&sty=BST&st=3&sr=true&fd=%s&stat=%s'.freeze
  # LHB_URL = '%sdata.%s/stock/lhb/%s.html'.freeze
  LHB_URL = '%sdata.%s/DataCenter_V3/stock2016/TradeDetail/pagesize=200,page=1,sortRule=-1,sortType=,startDate=%s,endDate=%s,gpfw=0,js=vardata_tab_1.html'
  LHB_SINA_URL = '%s%s/q/go.php/vLHBData/kind/%s/%s?last=%s&p=%s'.freeze
  LHB_TMP_COLS = %w(SCode SName Chgradio ZeMoney Bmoney Smoney Ctypedes
                    Turnover).freeze
  LHB_COLS = %w(code name pchange amount buy sell reason Turnover).freeze
  NEW_STOCKS_URL = '%s%s/corp/view/%s?page=%s&cngem=0&orderBy=NetDate&orderType=desc'.freeze
  MAR_SH_HZ_URL = '%s%s/marketdata/tradedata/%s?jsonCallBack=jsonpCallback%s&isPagination=true&tabType=&pageHelp.pageSize=100&beginDate=%s&endDate=%s%s&_=%s'
  MAR_SH_HZ_REF_URL = '%s%s/market/dealingdata/overview/margin/'
  MAR_SH_MX_URL = '%s%s/marketdata/tradedata/%s?jsonCallBack=jsonpCallback%s&isPagination=true&tabType=mxtype&detailsDate=%s&pageHelp.pageSize=100&stockCode=%s&beginDate=%s&endDate=%s%s&_=%s'.freeze
  MAR_SZ_HZ_URL = '%s%s/szseWeb/%s?SHOWTYPE=EXCEL&ACTIONID=8&CATALOGID=1837_xxpl&txtDate=%s&tab2PAGENUM=1&ENCODE=1&TABKEY=tab1'.freeze
  MAR_SZ_MX_URL = '%s%s/szseWeb/%s?SHOWTYPE=EXCEL&ACTIONID=8&CATALOGID=1837_xxpl&txtDate=%s&tab2PAGENUM=1&ENCODE=1&TABKEY=tab2'.freeze
  MAR_SH_HZ_TAIL_URL = '&pageHelp.pageNo=%s&pageHelp.beginPage=%s&pageHelp.endPage=%s'.freeze
  TERMINATED_URL = '%s%s/%s?jsonCallBack=jsonpCallback%s&isPagination=true&sqlId=COMMON_SSE_ZQPZ_GPLB_MCJS_ZZSSGGJBXX_L&pageHelp.pageSize=50&_=%s'.freeze
  SUSPENDED_URL = '%s%s/%s?jsonCallBack=jsonpCallback%s&isPagination=true&sqlId=COMMON_SSE_ZQPZ_GPLB_MCJS_ZTSSGS_L&pageHelp.pageSize=50&_=%s'
  TERMINATED_T_COLS = %w(COMPANY_CODE COMPANY_ABBR LISTING_DATE CHANGE_DATE).freeze
  LHB_KINDS = %w(ggtj yytj jgzz jgmx).freeze
  LHB_GGTJ_COLS = %w(code name count bamount samount net bcount scount).freeze
  LHB_YYTJ_COLS = %w(broker count bamount bcount samount scount top3).freeze
  LHB_JGZZ_COLS = %w(code name bamount bcount samount scount net).freeze
  LHB_JGMX_COLS = %w(code name date bamount samount type).freeze
  TERMINATED_COLS = %w(code name oDate tDate).freeze
  DP_COLS = ['report_date', 'quarter', 'code', 'name', 'plan']
  DP_163_COLS = %w(code name year plan report_date).freeze
  XSG_COLS = %w(code name date count ratio).freeze
  QUARTS_DIC = {
    '1' => ['%s-12-31', '%s-03-31'],
    '2' => ['%s-03-31', '%s-06-30'],
    '3' => ['%s-06-30', '%s-09-30'],
    '4' => ['%s-9-30', '%s-12-31']
  }.freeze
  FUND_HOLDS_COLS = ['count', 'clast', 'date', 'ratio', 'amount', 'nums','nlast', 'name', 'code']
  NEW_STOCKS_COLS = ['code', 'name', 'ipo_date', 'issue_date', 'amount', 'markets', 'price', 'pe',
                     'limit', 'funds', 'ballot']
  MAR_SH_COOKIES = { '_gscu_1808689395' => '27850607moztu036' }.freeze
  MAR_SH_HZ_COLS = %w(opDate rzye rzmre rqyl rqylje rqmcl rzrqjyzl).freeze
  MAR_SH_MX_COLS = ['opDate', 'stockCode', 'securityAbbr', 'rzye', 'rzmre', 'rzche', 'rqyl', 'rqmcl', 'rqchl']
  MAR_SZ_HZ_COLS = %w(rzmre rzye rqmcl rqyl rqye rzrqye).freeze
  MAR_SZ_MX_COLS = %w(stockCode securityAbbr rzmre rzye rqmcl rqyl rqye rzrqye).freeze
  MAR_SZ_HZ_MSG = 'please do not input more than a year,you can obtaining the data year by year.'.freeze
  MAR_SZ_HZ_MSG2 = 'start and end date all need input.'.freeze
  # for NewsEvent
  LATEST_URL = '%sroll.news.%s/interface/%s?col=43&spec=&type=&ch=03&k=&offset_page=0&offset_num=0&num=%s&asc=&page=1&r=0.%s'.freeze
  LATEST_COLS = %w(classify title time url).freeze
  LATEST_COLS_C = %w(classify title time url content).freeze
  NOTICE_INFO_URL = '%s%s/corp/view/%s?stock_str=%s'.freeze
  NOTICE_INFO_CLS = %w(title type date url).freeze
  GUBA_SINA_URL = '%sguba.%s'.freeze
  GUBA_SINA_COLS = %w(title content ptime rcounts).freeze
  # for Macro
  MACRO_TYPE = %w(nation price fininfo).freeze
  MACRO_URL = '%smoney.finance.%s/mac/api/jsonp.php/SINAREMOTECALLCALLBACK%s/MacPage_Service.get_pagedata?cate=%s&event=%s&from=0&num=%s&condition=&_=%s'.freeze
  GDP_YEAR_COLS = %w(year gdp pc_gdp gnp pi si industry cons_industry ti
                     trans_industry lbdy).freeze
  GDP_QUARTER_COLS = %w(quarter gdp gdp_yoy pi pi_yoy si si_yoy ti ti_yoy).freeze
  GDP_FOR_COLS = %w(year end_for for_rate asset_for asset_rate goods_for
                    goods_rate).freeze
  GDP_PULL_COLS = %w(year gdp_yoy pi si industry ti).freeze
  GDP_CONTRIB_COLS = %w(year gdp_yoy pi si industry ti).freeze
  CPI_COLS = %w(month cpi).freeze
  PPI_COLS = %w(month ppiip ppi qm rmi pi cg food clothing roeu dcg).freeze
  DEPOSIT_COLS = %w(date deposit_type rate).freeze
  LOAN_COLS = %w(date loan_type rate).freeze
  RRR_COLS = %w(date before now changed).freeze
  MONEY_SUPPLY_COLS = %w(month m2 m2_yoy m1 m1_yoy m0 m0_yoy cd cd_yoy qm
                         qm_yoy ftd ftd_yoy sd sd_yoy rests rests_yoy).freeze
  MONEY_SUPPLY_BLA_COLS = %w(year m2 m1 m0 cd qm ftd sd rests).freeze
  ALL_CAL_FILE = format('%s%s/static/calAll.csv', P_TYPE['http'], DOMAINS['oss']).freeze


  module Util
    # 生成symbol代码标志
    def _code_to_symbol(code)
      return INDEX_LIST[code] if INDEX_LABELS.include?(code)
      return ''               if code.nil? or code.size != 6
      ['5','6','9'].include?(code[0]) ? "sh#{code}" : "sz#{code}"
    end

    def _write_console()
      $stdout.write(DATA_GETTING_FLAG)
      $stdout.flush()
    end
    def _write_head()
      $stdout.write(DATA_GETTING_TIPS)
      $stdout.flush()
    end

    def check_year(year)
      fail "year param: #{year} is wrong format" if year.to_i < 1989
    end

    def check_quarter(quarter)
      fail "quarter param: #{quarter} is wrong" unless (1..4).cover? quarter
    end

    def fetch_ftp_file(url, &block)
      uri = URI(url)
      local_file_path = "/tmp/#{File.basename(uri.path)}"
      ftp = Net::FTP.new(uri.host)
      ftp.login
      ftp.getbinaryfile(uri.path, local_file_path)
      return local_file_path unless block_given?
      file = File.new(local_file_path)
      result = yield file if block_given?
      file.close
      File.delete(local_file_path)
      result
    end

    # 交易日历 isOpen=1是交易日，isOpen=0为休市
    def trade_cal
      resp = HTTParty.get(ALL_CAL_FILE)
      result = []
      CSV.new(resp.body.encode('utf-8', 'gbk')).drop(1).each do |arr|
        result << { 'date' => arr[0], 'is_open' => arr[1] }
      end
      result
    end

    # 判断是否为交易日，返回 true or false
    def holiday?(date)
      trade_cals = trade_cal
      holidays = trade_cals.select { |object| object['is_open'] == 0 }
                           .map { |object| object['date'] }
      [6, 7].include?(date.cwday) ||
        holidays.include?(date.strftime('%F'))
    end
  end
end
