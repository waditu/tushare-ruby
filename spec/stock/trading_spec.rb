require 'spec_helper'

#bundle exec rspec spec
describe Tushare::Stock::Trading do
  before do
    @stock = Tushare::Stock::Trading
  end

  describe 'Trading' do
    it 'can get hist data' do
      #tp @stock.get_hist_data("sh",  start_date: "2016-03-01", end_date: "2016-03-02" )
      ap @stock.get_hist_data('300027')
      #ap @stock.get_hist_data('600848', ktype: '30')
      #tp @stock.get_hist_data("002606", start_date: "2016-02-01", end_date: "2016-03-11")
      #tp @stock.get_hist_data("002411", start_date: "2016-03-01", end_date: "2016-03-02")
    end

    it 'can get tick data' do
      tp @stock.get_tick_data('600848', '2015-04-07')
    end

    it 'can get sina dd' do
      tp @stock.get_sina_dd('600848', vol: 200, date: '2016-03-02')
    end

    it 'can get today ticks' do
      tp @stock.get_today_ticks("600848")
    end

    it 'can get today all data' do
      ap @stock.get_today_all
    end

    it 'can get realtime_quotes data' do
      tp @stock.get_realtime_quotes(['600006'])
    end

    it 'can get h_data data' do
      tp @stock.get_h_data('600036', '2016-04-01', '2016-05-01', 'qfq')
    end

    it 'can get index data' do
      tp @stock.get_index
    end

    it 'can get hists data' do
      tp @stock.get_hists(%w(300027 600036))
    end
  end
end
