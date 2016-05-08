module Tushare
  module Datayes
    # 通联数据-特色大数据
    module Subject
      # 包含雪球社交统计数据，输入一个或多个证券交易代码、统计起止日期，获取该证券一段时间内每天的雪球帖子数量、帖子占比(%)。(注：数据自2014/1/1始，按日更新。)
      def social_data_xq(begin_date: '', end_date: '', ticker: '', field: '')
        api_path = format(SOCIALDATAXQ, begin_date, end_date, ticker, field)
        fetch_data api_path
      end

      # 包含按单只证券代码获取的雪球社交数据，输入一个证券交易代码，获取该证券每天的雪球帖子数量、及帖子占比(%)。(注：数据自2014/1/1始，按日更新。)
      def social_data_xq_by_ticker(ticker: '', field: '')
        api_path = format(SOCIALDATAXQBYTICKER, ticker, field)
        fetch_data api_path
      end

      # 包含按单个统计日期获取的雪球社交数据，输入一个统计日期，获取当天雪球帖子涉及的所有证券、各证券雪球帖子数量、帖子占比(%)。(注：数据自2014/1/1始，按日更新。)
      def social_data_xq_by_date(statistics_date: '', field: '')
        api_path = format(SOCIALDATAXQBYDATE, statistics_date, field)
        fetch_data api_path
      end

      # 包含新闻基本信息。输入新闻ID，获取新闻基本信息，如：新闻ID、标题、摘要、初始来源、作者、发布来源、发布时间、入库时间等。(注：1、自2014/1/1起新闻来源众多、新闻量日均4万左右，2013年及之前的网站来源少、每天新闻数据量少；2、数据实时更新。)
      def news_info(news_id: '', field: '')
        api_path = format(NEWSINFO, news_id, field)
        fetch_data api_path
      end

      # 获取某天某一段时间内的新闻基本信息。输入新闻发布的日期、起止时间，获取该时间段内的新闻相关信息，如：新闻ID、标题、摘要、初始来源、作者、发布来源、发布时间、入库时间等。(注：1、自2014/1/1起新闻来源众多、新闻量日均4万左右，2013年及之前的网站来源少、新闻数据量少；2、数据实时更新。)
      def news_info_by_time(news_publish_date: '', begin_time: '', end_time: '',
                            field: '')
        api_path = format(NEWSINFOBYTIME, news_publish_date, begin_time,
                          end_time, field)
        fetch_data api_path
      end

      # 包含新闻全文等信息。输入新闻ID，获取新闻全文相关字段，如：新闻ID、标题、摘要、正文、来源链接、初始来源、作者、发布来源、发布时间、入库时间等。(注：1、自2014/1/1起新闻来源众多、新闻量日均4万左右，2013年及之前的网站来源少、新闻数据量少；2、数据实时更新。)
      def news_content(news_id: '', field: '')
        api_path = format(NEWSCONTENT, news_id, field)
        fetch_data api_path
      end

      # 获取某天某一段时间内的新闻全文等信息。输入新闻发布的日期、起止时间，获取该时间段内的新闻全文等信息，如：新闻ID、标题、摘要、正文、来源链接、初始来源、作者、发布来源、发布时间、入库时间等。(注：1、自2014/1/1起新闻来源众多、新闻量日均4万左右，2013年及之前的网站来源少、新闻数据量少；2、数据实时更新。)
      def news_content_by_time(news_publish_date: '', begin_time: '',
                               end_time: '', field: '')
        api_path = format(NEWSCONTENTBYTIME, news_publish_date, begin_time,
                          end_time, field)
        fetch_data api_path
      end

      # 包含新闻关联的公司数据，同时可获取针对不同公司的新闻情感数据。输入新闻ID，获取相关的公司信息，如：公司代码、公司全称，同时返回新闻标题、发布时间、入库时间信息。其中，公司代码可继续通过证券编码及基本上市信息(getSecID)查找公司相关的证券。(注：1、自2014/1/1起新闻来源众多、新闻量日均4万左右，2013年及之前的网站来源少、新闻数据量少；2、数据实时更新。)
      def company_by_news(news_id: '', field: '')
        api_path = format(COMPANYBYNEWS, news_id, field)
        fetch_data api_path
      end

      # 包含公司关联的新闻数据，同时可获取针对不同公司的新闻情感数据。输入公司代码、查询的新闻发布起止时间，获取相关的新闻信息，如：新闻ID、新闻标题、发布来源、发布时间、新闻入库时间等。(注：1、自2014/1/1起新闻来源众多、新闻量日均4万左右，2013年及之前的网站来源少、新闻数据量少；2、数据实时更新。)
      def news_by_company(party_id: '', begin_date: '', end_date: '',
                          field: '')
        api_path = format(NEWSBYCOMPANY, party_id, begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含新闻相关的证券数据，同时可获取针对不同证券的新闻情感数据。输入新闻ID，获取相关的证券信息，如：证券代码、证券简称、证券交易场所，同时返回新闻标题、发布来源、发布时间、入库时间等新闻相关信息。每天更新。(注：1、自2014/1/1起新闻来源众多、新闻量日均4万左右，2013年及之前的网站来源少、新闻数据量少；2、数据实时更新。)
      def tickers_by_news(news_id: '', field: '')
        api_path = format(TICKERSBYNEWS, news_id, field)
        fetch_data api_path
      end

      # 包含证券相关的新闻数据，同时可获取针对不同证券的新闻情感数据。输入证券代码或简称、查询的新闻发布起止时间，同时可输入证券交易所代码，获取相关新闻数据，如：新闻ID、新闻标题、发布来源、发布时间、入库时间等。(注：1、自2014/1/1起新闻来源众多、新闻量日均4万左右，2013年及之前的网站来源少、新闻数据量少；2、数据实时更新。)
      def news_by_tickers(sec_id: '', sec_short_name: '', ticker: '',
                          begin_date: '', end_date: '', exchange_cd: '',
                          field: '')
        api_path = format(NEWSBYTICKERS, sec_id, sec_short_name, ticker,
                          begin_date, end_date, exchange_cd, field)
        fetch_data api_path
      end

      # 包含所有主题基本信息。输入主题代码或名称、主题来源，可以获取主题相关信息，包括主题ID、主题名称、主题描述、主题来源、当天是否活跃、主题插入时间、主题更新时间等。(注：1、主题基期自2011/4/16始；2、数据按日更新主题活跃状态。)
      def themes_content(is_main: '', theme_id: '', theme_name: '',
                         theme_source: '', field: '')
        api_path = format(THEMESCONTENT, is_main, theme_id, theme_name,
                          theme_source, field)
        fetch_data api_path
      end

      # 包含主题关联的证券数据。输入主题代码或名称，可以获取主题关联的证券等信息，包括证券代码、证券简称、证券交易场所，同时返回三个维度的关联分数、关联开始时间、关联结束时间、关联具体描述、数据入库及更新时间，同时可输入查询起止时间，以获取主题在该时间段内关联的证券信息。(注：1、主题与证券的关联自2013/12/28始、2014年12月起关联数据完整；2、数据按日更新、同时刷新关联状态。)
      def tickers_by_themes(theme_id: '', theme_name: '', begin_date: '',
                            end_date: '', is_new: '', field: '')
        api_path = format(TICKERSBYTHEMES, theme_id, theme_name, begin_date,
                          end_date, is_new, field)
        fetch_data api_path
      end

      # 获取一段时间内主题新增的关联证券数据，输入主题代码或名称、查询起止时间，可以获取该时间段内主题新增的关联证券信息，包括证券代码、证券简称、证券交易场所，同时返回三个维度的关联分数、关联开始时间、关联结束时间、关联具体描述、数据入库及更新时间。(注：1、主题与证券的关联自2013/12/28始、2014年12月起关联数据完整；2、数据按日更新。)
      def themes_tickers_insert(theme_id: '', theme_name: '', begin_date: '',
                                end_date: '', field: '')
        api_path = format(THEMESTICKERSINSERT, theme_id, theme_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 获取一段时间内主题删除的关联证券数据，输入主题代码或名称、查询起止时间，可以获取该时间段内主题删除的关联证券信息，包括证券代码、证券简称、证券交易场所，同时返回关联开始时间、关联结束时间、关联具体描述、数据入库及更新时间。(注：1、主题与证券的关联自2013/12/28始、2014年12月起关联数据完整；2、数据按日更新。)
      def themes_tickers_delete(theme_id: '', theme_name: '', begin_date: '',
                                end_date: '', field: '')
        api_path = format(THEMESTICKERSDELETE, theme_id, theme_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含证券关联的主题数据。输入证券交易所代码、证券交易代码或简称，可以获取关联的主题等信息，包括证券代码、证券简称、证券交易场所，同时返回三个维度的关联分数、关联开始时间、关联结束时间、关联具体描述、数据入库及更新时间，同时可输入查询起止时间，以获取证券在该时间段内关联到的主题信息。(注：1、主题与证券的关联自2013/12/28始、2014年12月起关联数据完整；2、数据按日更新。)
      def themes_by_tickers(sec_id: '', sec_short_name: '', ticker: '',
                            begin_date: '', end_date: '', exchange_cd: '',
                            field: '')
        api_path = format(THEMESBYTICKERS, sec_id, sec_short_name, ticker,
                          begin_date, end_date, exchange_cd, field)
        fetch_data api_path
      end

      # 包含主题活跃周期数据。输入主题代码或名称，获取主题的活跃时间等信息，同时可输入是否最新活跃期，获取主题最新的活跃周期。(注：1、主题活跃周期数据自2013/1/1始；2、新闻量在某段时间内达到活跃阈值的主题即为活跃主题；3、数据按日更新。)
      def themes_period(is_latest: '', theme_id: '', theme_name: '', field: '')
        api_path = format(THEMESPERIOD, is_latest, theme_id, theme_name, field)
        fetch_data api_path
      end

      # 获取某天活跃的主题数据。输入一个日期，获取在该日期活跃的主题。(注：1、主题活跃周期数据自2013/1/1始；2、新闻量在某段时间内达到活跃阈值的主题即为活跃主题；3、数据按日更新。)
      def active_themes(date: '', field: '')
        api_path = format(ACTIVETHEMES, date, field)
        fetch_data api_path
      end

      # 获取与某主题相似的其他主题数据。输入主题代码或名称，可以获取相似的主题信息，包括相似主题代码、相似主题名称、主题文本的相似度、主题关联证券的相似度。数据按日更新。
      def themes_similarity(theme_id: '', theme_name: '', field: '')
        api_path = format(THEMESSIMILARITY, theme_id, theme_name, field)
        fetch_data api_path
      end

      # 包含主题的热度数据。输入主题代码或名称、同时可输入起止日期，获取一段时间内主题每天的新闻数量、主题热度(即主题每天新闻数量占当日所有主题新闻总量的百分比(%))。(注：数据自2014/1/1始，每天更新)
      def themes_heat(theme_id: '', theme_name: '', begin_date: '',
                      end_date: '', field: '')
        api_path = format(THEMESHEAT, theme_id, theme_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含证券关联的主题数据，主题源自申万行业。输入证券交易所代码、证券交易代码或简称，可以获取关联的主题等信息，包括证券代码、证券简称、证券交易场所，同时返回三个维度的关联分数、关联开始时间、关联结束时间、关联具体描述、数据入库及更新时间，同时可输入查询起止时间，以获取证券在该时间段内关联到的主题信息。(注：1、源自行业的主题与证券的关联自2014/12/26始；2、数据按日更新、同时刷新关联状态。)
      def sector_themes_by_tickers(sec_id: '', sec_short_name: '', ticker: '',
                                   begin_date: '', end_date: '',
                                   exchange_cd: '', field: '')
        api_path = format(SECTORTHEMESBYTICKERS, sec_id, sec_short_name, ticker,
                          begin_date, end_date, exchange_cd, field)
        fetch_data api_path
      end

      # 包含证券关联的主题数据，主题源自网络。输入证券交易所代码、证券交易代码或简称，可以获取关联的主题等信息，包括证券代码、证券简称、证券交易场所，同时返回三个维度的关联分数、关联开始时间、关联结束时间、关联具体描述、数据入库及更新时间，同时可输入查询起止时间，以获取证券在该时间段内关联到的主题信息。(注：1、源自网络的主题与证券的关联自2013/12/28始、2014年12月起关联数据完整；2、数据按日更新。)
      def web_themes_by_tickers(sec_id: '', sec_short_name: '', ticker: '',
                                begin_date: '', end_date: '', exchange_cd: '',
                                field: '')
        api_path = format(WEBTHEMESBYTICKERS, sec_id, sec_short_name, ticker,
                          begin_date, end_date, exchange_cd, field)
        fetch_data api_path
      end

      # 包含证券相关的新闻热度指数数据，输入一个或多个证券交易代码、起止日期，获取该证券一段时间内的新闻热度指数(即证券当天关联新闻数量占当天新闻总量的百分比(%))。每天更新。（注：1、2014/1/1起新闻来源众多、指数统计有效，2013年及之前的网站来源不全、数据波动大，数据自2004/10/28始；2、新闻量的统计口径为经算法处理后证券关联到的所有常规新闻；3、数据按日更新。)
      def news_heat_index(begin_date: '', end_date: '', exchange_cd: '',
                          sec_id: '', sec_short_name: '', ticker: '',
                          field: '')
        api_path = format(NEWSHEATINDEX, begin_date, end_date, exchange_cd,
                          sec_id, sec_short_name, ticker, field)
        fetch_data api_path
      end

      # 包含证券相关的新闻情感指数数据，输入一个或多个证券交易代码、起止日期，获取该证券一段时间内的新闻情感指数(即当天证券关联新闻的情感均值)。（注：1、2014/1/1起新闻来源众多、指数统计有效，2013年及之前的网站来源不全、数据波动大，数据自2004/10/28始；2、新闻量的统计口径为经算法处理后证券关联到的所有常规新闻；3、数据按日更新。)
      def news_sentiment_index(begin_date: '', end_date: '', exchange_cd: '',
                               sec_id: '', sec_short_name: '', ticker: '',
                               field: '')
        api_path = format(NEWSSENTIMENTINDEX, begin_date, end_date, exchange_cd,
                          sec_id, sec_short_name, ticker, field)
        fetch_data api_path
      end

      # 根据证券代码获取相应公告分类结果，输入一个或多个证券交易代码，可以获取所查询证券相关的公告信息，包括公告ID、公告名称、证券交易场所、证券交易所对公告的原始分类、公告分类结果、公告分类入库时间、更新时间。(注：公告分类数据自2009/1/5始，按日更新)
      def report_by_ticker(ticker: '', begin_date: '', end_date: '', field: '')
        api_path = format(REPORTBYTICKER, ticker, begin_date, end_date, field)
        fetch_data api_path
      end

      # 根据公告分类获取相应公告信息，输入一个或多个公告分类，可以获取所查询证券相关的公告信息，包括公告ID、公告名称、证券交易场所、证券交易所对公告的原始分类、公告发布时间、公告所属分类、公告分类入库时间、更新时间。(注：公告分类数据自2009/1/5始，按日更新)
      def report_by_category(begin_date: '', category: '', end_date: '',
                             field: '')
        api_path = format(REPORTBYCATEGORY, begin_date, category, end_date,
                          field)
        fetch_data api_path
      end

      # 根据证券代码获取公告内容，输入一个或多个证券交易代码，可以获取所查询证券相关的公告信息，包括公告ID、公告名称、证券交易场所、证券交易所对公告的原始分类、公告发布时间、公告具体内容、公告链接、公告入库时间。(注：公告数据自2000/1/8始，按日更新)
      def report_content(ticker: '', begin_date: '', end_date: '', field: '')
        api_path = format(REPORTCONTENT, ticker, begin_date, end_date, field)
        fetch_data api_path
      end

      # 获取一段时间内新增(开始)的活跃主题数据，输入的时间参数在主题活跃周期的起始时间列进行查询。输入查询起止时间、是否最新活跃期、主题来源，可以获取该时间段内开始活跃的主题信息，包括主题ID、主题名称、主题开始时间、主题结束时间、是否最新活跃期、数据入库及更新时间。(注：1、主题活跃周期数据自2013/1/1始；2、数据按日更新。)
      def active_themes_insert(begin_date: '', end_date: '', is_latest: '',
                               theme_source: '', field: '')
        api_path = format(ACTIVETHEMESINSERT, begin_date, end_date, is_latest,
                          theme_source, field)
        fetch_data api_path
      end

      # 获取一段时间内删除(退出)的活跃主题数据，输入的时间参数在主题活跃周期的结束时间列进行查询。输入查询起止时间、是否最新活跃期、主题来源，可以获取该时间段内停止活跃的主题信息，包括主题ID、主题名称、主题开始时间、主题结束时间、是否最新活跃期、数据入库及更新时间。(注：1、主题活跃周期数据自2013/1/1始；2、数据按日更新。3、查询当天无活跃主题被删除、需等第二天9:00之后获取前一天停止活跃的主题数据。)
      def active_themes_delete(begin_date: '', end_date: '', is_latest: '',
                               theme_source: '', field: '')
        api_path = format(ACTIVETHEMESDELETE, begin_date, end_date, is_latest,
                          theme_source, field)
        fetch_data api_path
      end

      # 获取当天活跃主题聚类对应关系数据。输入聚类后的主要主题代码或名称，可以获取同一类别的主题相关信息，包括主题ID、主题名称、主题插入时间、主题更新时间等。(注：1、可先在主题基本信息(getThemesContent)这个API中获取当天聚类后的主题；2、可输入isMain=0，在返回的数据中剔除主题自身的对应；3、数据每天刷新，只能获取当天数据。)
      def themes_cluster(is_main: '', theme_id: '', theme_name: '', field: '')
        api_path = format(THEMESCLUSTER, is_main, theme_id, theme_name, field)
        fetch_data api_path
      end

      # 获取新闻关联的主题数据。输入新闻ID或新闻与主题的关联数据入库起止时间，可以获取相关的主题信息，如：主题ID、主题名称，同时返回新闻标题、新闻发布时间、关联数据入库时间、更新时间等。(注：1、自2014/1/1起新闻来源众多、新闻量日均4万左右，2013年及之前的网站来源少、新闻数据量少；2、数据实时更新；3、关联数据入库起始时间为2015/04/07。)
      def themes_by_news(insert_date: '', news_id: '', begin_time: '',
                         end_time: '', field: '')
        api_path = format(THEMESBYNEWS, insert_date, news_id, begin_time,
                          end_time, field)
        fetch_data api_path
      end

      # 获取新闻关联的主题数据，只包含与公司相关的新闻。输入新闻ID或新闻与主题的关联数据入库起止时间，可以获取相关的主题信息，如：主题ID、主题名称，同时返回新闻标题、新闻发布时间、关联数据入库时间、更新时间等。(注：1、自2014/1/1起新闻来源众多、新闻量日均4万左右，2013年及之前的网站来源少、新闻数据量少；2、数据实时更新；3、关联数据入库起始时间为2015/04/07。)
      def themes_by_news_company_rel(insert_date: '', news_id: '',
                                     begin_time: '', end_time: '', field: '')
        api_path = format(THEMESBYNEWSCOMPANYREL, insert_date, news_id,
                          begin_time, end_time, field)
        fetch_data api_path
      end

      # 获取一段时间内新入库的主题数据。输入查询起止时间，可以获取该时间段内新入库的主题信息，包括主题ID、主题名称、主题描述、主题来源、当天是否活跃、主题插入时间、主题更新时间等。(注：1、主题基期自2011/4/16始；2、数据按日更新主题活跃状态。)
      def themes_insert_db(begin_date: '', end_date: '', theme_source: '',
                           field: '')
        api_path = format(THEMESINSERTDB, begin_date, end_date, theme_source,
                          field)
        fetch_data api_path
      end

      # 获取新闻关联的主题数据，该API以获取新闻关联的主题(getThemesByNews)为基础、进行过滤优化。输入新闻ID或新闻与主题的关联数据入库起止时间，可以获取相关的主题信息，如：主题ID、主题名称，同时返回新闻标题、新闻发布时间、关联数据入库时间、更新时间等。(注：1、自2014/1/1起新闻来源众多、新闻量日均4万左右，2013年及之前的网站来源少、新闻数据量少；2、数据实时更新；3、关联数据入库起始时间为2015/04/07。)
      def themes_by_news_lf(insert_date: '', news_id: '', begin_time: '',
                            end_time: '', field: '')
        api_path = format(THEMESBYNEWSLF, insert_date, news_id, begin_time,
                          end_time, field)
        fetch_data api_path
      end

      # 获取新闻关联的主题数据，该API以获取新闻关联的主题(优化后)(getThemesByNewsLF)为基础、再次进行过滤优化，是所有获取新闻关联的主题API中最严格的优化结果、数据量也最少。输入新闻ID或新闻与主题的关联数据入库起止时间，可以获取相关的主题信息，如：主题ID、主题名称，同时返回新闻标题、新闻发布时间、关联数据入库时间、更新时间等。(注：1、自2014/1/1起新闻来源众多、新闻量日均4万左右，2013年及之前的网站来源少、新闻数据量少；2、数据实时更新；3、关联数据入库起始时间为2015/04/07。)
      def themes_by_news_mf(insert_date: '', news_id: '', begin_time: '',
                            end_time: '', field: '')
        api_path = format(THEMESBYNEWSMF, insert_date, news_id, begin_time,
                          end_time, field)
        fetch_data api_path
      end

      # 获取某天某一段时间内入库的新闻基本信息。输入新闻入库的日期、起止时间，获取该时间段内新入库的新闻相关信息，如：新闻ID、标题、摘要、初始来源、作者、发布来源、发布时间、新闻入库时间等。(注：1、自2014/1/1起新闻来源众多、新闻量日均4万左右，2013年及之前的网站来源少、新闻数据量少；2、数据实时更新。)
      def news_info_by_insert_time(news_insert_date: '', begin_time: '',
                                   end_time: '', field: '')
        api_path = format(NEWSINFOBYINSERTTIME, news_insert_date, begin_time,
                          end_time, field)
        fetch_data api_path
      end

      # 获取某天某一段时间内入库的新闻全文等信息。输入新闻入库的日期、起止时间，获取该时间段内新入库的新闻全文等信息，如：新闻ID、标题、摘要、正文、来源链接、初始来源、作者、发布来源、发布时间、新闻入库时间等。(注：1、自2014/1/1起新闻来源众多、新闻量日均4万左右，2013年及之前的网站来源少、新闻数据量少；2、数据实时更新。)
      def news_content_by_insert_time(news_insert_date: '', begin_time: '',
                                      end_time: '', field: '')
        api_path = format(NEWSCONTENTBYINSERTTIME, news_insert_date, begin_time,
                          end_time, field)
        fetch_data api_path
      end

      # 包含证券在股吧社交中的热度统计数据，输入一个或多个证券交易代码、统计起止日期，该证券在一段时间内每天相关的股吧帖子数量、帖子占比(%)。(注：数据自2014/1/1始，按日更新。)
      def social_data_guba(begin_date: '', end_date: '', ticker: '', field: '')
        api_path = format(SOCIALDATAGUBA, begin_date, end_date, ticker, field)
        fetch_data api_path
      end

      # 包含主题在股吧社交中的热度统计数据，输入一个或多个主题代码、统计起止日期，获取该主题在一段时间内每天相关的股吧帖子数量、帖子占比(%)。(注：数据自2014/1/1始，按日更新。)
      def social_theme_data_guba(begin_date: '', end_date: '', theme_id: '',
                                 field: '')
        api_path = format(SOCIALTHEMEDATAGUBA, begin_date, end_date, theme_id,
                          field)
        fetch_data api_path
      end

      # 根据发布时间获取新闻关联的主题数据。输入新闻发布的起止时间，可以获取相关的主题信息，如：主题ID、主题名称，同时返回新闻标题、新闻发布时间、关联数据入库时间、更新时间等。(注：1、自2014/1/1起新闻来源众多、新闻量日均4万左右，2013年及之前的网站来源少、新闻数据量少；2、数据实时更新；3、关联数据入库起始时间为2015/04/07。)
      def themes_by_news_time(publish_begin_time: '', publish_end_time: '',
                              field: '')
        api_path = format(THEMESBYNEWSTIME, publish_begin_time,
                          publish_end_time, field)
        fetch_data api_path
      end

      # 根据发布时间获取新闻关联的主题数据，只包含与公司相关的新闻。输入新闻发布的起止时间，可以获取相关的主题信息，如：主题ID、主题名称，同时返回新闻标题、新闻发布时间、关联数据入库时间、更新时间等。(注：1、自2014/1/1起新闻来源众多、新闻量日均4万左右，2013年及之前的网站来源少、新闻数据量少；2、数据实时更新；3、关联数据入库起始时间为2015/04/07。)
      def themes_by_news_time_company_rel(publish_begin_time: '',
                                          publish_end_time: '', field: '')
        api_path = format(THEMESBYNEWSTIMECOMPANYREL, publish_begin_time,
                          publish_end_time, field)
        fetch_data api_path
      end

      # 根据发布时间获取新闻关联的主题数据，该API以获取新闻关联的主题(getThemesByNewsTime)为基础、进行过滤优化。输入新闻发布的起止时间，可以获取相关的主题信息，如：主题ID、主题名称，同时返回新闻标题、新闻发布时间、关联数据入库时间、更新时间等。(注：1、自2014/1/1起新闻来源众多、新闻量日均4万左右，2013年及之前的网站来源少、新闻数据量少；2、数据实时更新；3、关联数据入库起始时间为2015/04/07。)
      def themes_by_news_time_lf(publish_begin_time: '', publish_end_time: '',
                                 field: '')
        api_path = format(THEMESBYNEWSTIMELF, publish_begin_time,
                          publish_end_time, field)
        fetch_data api_path
      end

      # 根据发布时间获取新闻关联的主题数据，该API以获取新闻关联的主题(优化后)(getThemesByNewsTimeLF)为基础、再次进行过滤优化，是所有获取新闻关联的主题API中最严格的优化结果、数据量也最少。输入新闻发布的起止时间，可以获取相关的主题信息，如：主题ID、主题名称，同时返回新闻标题、新闻发布时间、关联数据入库时间、更新时间等。(注：1、自2014/1/1起新闻来源众多、新闻量日均4万左右，2013年及之前的网站来源少、新闻数据量少；2、数据实时更新；3、关联数据入库起始时间为2015/04/07。)
      def themes_by_news_time_mf(publish_begin_time: '', publish_end_time: '',
                                 field: '')
        api_path = format(THEMESBYNEWSTIMEMF, publish_begin_time,
                          publish_end_time, field)
        fetch_data api_path
      end

      # 根据公告ID获取公告原始内容数据，输入公告ID，获取公告原文等信息，包括公告ID、公告名称、证券交易场所、证券交易所对公告的原始分类、公告发布时间、公告具体内容、公告链接、公告入库时间。(注：公告数据自2000/1/8始，按日更新)
      def report_content_by_id(report_id: '', field: '')
        api_path = format(REPORTCONTENTBYID, report_id, field)
        fetch_data api_path
      end

      # 获取新闻关联的主题数据，原API(获取新闻关联的主题数据-getThemesByNews)的升级版。输入新闻ID或新闻与主题的关联数据入库起止时间，可以获取相关的主题信息，如：主题ID、主题名称，同时返回新闻标题、新闻发布时间、关联数据入库时间、更新时间等。(注：1、自2014/1/1起新闻来源众多、新闻量日均4万左右，2013年及之前的网站来源少、新闻数据量少；2、数据实时更新；3、关联数据入库起始时间为2015/06/17)
      def themes_by_news2(insert_begin_time: '', insert_end_time: '',
                          news_id: '', field: '')
        api_path = format(THEMESBYNEWS2, insert_begin_time, insert_end_time,
                          news_id, field)
        fetch_data api_path
      end

      # 根据发布时间获取新闻关联的主题数据，原API(根据发布时间获取新闻关联的主题数据-getThemesByNewsTime)的升级版。输入新闻发布的起止时间，可以获取相关的主题信息，如：主题ID、主题名称，同时返回新闻标题、新闻发布时间、关联数据入库时间、更新时间等。(注：1、自2014/1/1起新闻来源众多、新闻量日均4万左右，2013年及之前的网站来源少、新闻数据量少；2、数据实时更新；3、关联数据入库起始时间为2015/06/17。)
      def themes_by_news_time2(publish_begin_time: '', publish_end_time: '',
                               field: '')
        api_path = format(THEMESBYNEWSTIME2, publish_begin_time,
                          publish_end_time, field)
        fetch_data api_path
      end
    end
  end
end
