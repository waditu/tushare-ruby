require 'spec_helper'

describe Tushare::Datayes do
  before do
    @datayes = Tushare::Datayes
  end

  it 'can get social_data_xq data' do
    tp @datayes.social_data_xq(begin_date: '', end_date: '', ticker: '',
                               field: '')
  end

  it 'can get social_data_xq_by_ticker data' do
    tp @datayes.social_data_xq_by_ticker(ticker: '', field: '')
  end

  it 'can get social_data_xq_by_date data' do
    tp @datayes.social_data_xq_by_date(statistics_date: '', field: '')
  end

  it 'can get news_info data' do
    tp @datayes.news_info(news_id: '8832506')
  end

  it 'can get news_info_by_time data' do
    tp @datayes.news_info_by_time(news_publish_date: '20150101')
  end

  it 'can get news_content data' do
    tp @datayes.news_content(news_id: '', field: '')
  end

  it 'can get news_content_by_time data' do
    tp @datayes.news_content_by_time(news_publish_date: '', begin_time: '',
                                     end_time: '', field: '')
  end

  it 'can get company_by_news data' do
    tp @datayes.company_by_news(news_id: '8832506')
  end

  it 'can get news_by_company data' do
    tp @datayes.news_by_company(party_id: '603', begin_date: '20150301',
                                end_date: '20150305')
  end

  it 'can get tickers_by_news data' do
    tp @datayes.tickers_by_news(news_id: '8832506')
  end

  it 'can get news_by_tickers data' do
    tp @datayes.news_by_tickers(ticker: '600000', begin_date: '20150301',
                                end_date: '20150305')
  end

  it 'can get themes_content data' do
    tp @datayes.themes_content(is_main: '1')
  end

  it 'can get tickers_by_themes data' do
    tp @datayes.tickers_by_themes(theme_name: '4G')
  end

  it 'can get themes_tickers_insert data' do
    tp @datayes.themes_tickers_insert(theme_name: '4G',
                                      begin_date: '20150101',
                                      end_date: '20150306')
  end

  it 'can get themes_tickers_delete data' do
    tp @datayes.themes_tickers_delete(theme_name: '4G',
                                      begin_date: '20150101',
                                      end_date: '20150306')
  end

  it 'can get themes_by_tickers data' do
    tp @datayes.themes_by_tickers(ticker: '600000')
  end

  it 'can get themes_period data' do
    tp @datayes.themes_period(theme_name: '4G')
  end

  it 'can get active_themes data' do
    tp @datayes.active_themes(date: '20150505')
  end

  it 'can get themes_similarity data' do
    tp @datayes.themes_similarity(theme_name: '4G')
  end

  it 'can get themes_heat data' do
    tp @datayes.themes_heat(theme_name: '4G')
  end

  it 'can get sector_themes_by_tickers data' do
    tp @datayes.sector_themes_by_tickers(ticker: '600000')
  end

  it 'can get web_themes_by_tickers data' do
    tp @datayes.web_themes_by_tickers(ticker: '600000')
  end

  it 'can get news_heat_index data' do
    tp @datayes.news_heat_index(ticker: '600000')
  end

  it 'can get news_sentiment_index data' do
    tp @datayes.news_sentiment_index(ticker: '600000')
  end

  it 'can get report_by_ticker data' do
    tp @datayes.report_by_ticker(ticker: '600000')
  end

  it 'can get report_by_category data' do
    tp @datayes.report_by_category(category: '高管变动', begin_date: '20140101')
  end

  it 'can get report_content data' do
    tp @datayes.report_content(ticker: '002084')
  end

  it 'can get active_themes_insert data' do
    tp @datayes.active_themes_insert(begin_date: '20160101',
                                     end_date: '20160505')
  end

  it 'can get active_themes_delete data' do
    tp @datayes.active_themes_delete(begin_date: '20160101',
                                     end_date: '20160505')
  end

  it 'can get themes_cluster data' do
    tp @datayes.themes_cluster
  end

  it 'can get themes_by_news data' do
    tp @datayes.themes_by_news(news_id: '10644656,10551995')
  end

  it 'can get themes_by_news_company_rel data' do
    tp @datayes.themes_by_news_company_rel(news_id: '10644656,10551995')
  end

  it 'can get themes_insert_db data' do
    tp @datayes.themes_insert_db(begin_date: '20160401',
                                 end_date: '20160501')
  end

  it 'can get themes_by_news_lf data' do
    tp @datayes.themes_by_news_lf(news_id: '10756429,10771875,10783175')
  end

  it 'can get themes_by_news_mf data' do
    tp @datayes.themes_by_news_mf(news_id: '10756429,10771875,10783175')
  end

  it 'can get news_info_by_insert_time data' do
    tp @datayes.news_info_by_insert_time(news_insert_date: '20160505',
                                         begin_time: '08:10',
                                         end_time: '08:20')
  end

  # it 'can get news_content_by_insert_time data' do
  #   tp @datayes.news_content_by_insert_time(news_insert_date: '',
  #                                           begin_time: '', end_time: '',
  #                                           field: '')
  # end

  it 'can get social_data_guba data' do
    tp @datayes.social_data_guba(begin_date: '20160501',
                                 end_date: '20160505',
                                 ticker: '600000')
  end

  it 'can get social_theme_data_guba data' do
    tp @datayes.social_theme_data_guba(begin_date: '20160501',
                                       end_date: '20160505',
                                       theme_id: '1,2')
  end

  # it 'can get themes_by_news_time data' do
  #   tp @datayes.themes_by_news_time(publish_begin_time: '',
  #                                   publish_end_time: '', field: '')
  # end

  # it 'can get themes_by_news_time_company_rel data' do
  #   tp @datayes.themes_by_news_time_company_rel(publish_begin_time: '',
  #                                               publish_end_time: '',
  #                                               field: '')
  # end

  # it 'can get themes_by_news_time_lf data' do
  #   tp @datayes.themes_by_news_time_lf(publish_begin_time: '',
  #                                      publish_end_time: '', field: '')
  # end

  # it 'can get themes_by_news_time_mf data' do
  #   tp @datayes.themes_by_news_time_mf(publish_begin_time: '',
  #                                      publish_end_time: '', field: '')
  # end

  # it 'can get report_content_by_id data' do
  #   tp @datayes.report_content_by_id(report_id: '', field: '')
  # end

  # it 'can get themes_by_news2 data' do
  #   tp @datayes.themes_by_news2(insert_begin_time: '', insert_end_time: '',
  #                               news_id: '', field: '')
  # end

  # it 'can get themes_by_news_time2 data' do
  #   tp @datayes.themes_by_news_time2(publish_begin_time: '',
  #                                    publish_end_time: '', field: '')
  # end
end
