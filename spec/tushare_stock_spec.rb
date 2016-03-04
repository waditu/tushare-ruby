require 'spec_helper'

describe Tushare::Stock do
  
  include Tushare::Stock
  
  describe "Trading" do 
    it 'can get hist data' do 
      #tp get_hist_data("sh",  start_date: "2016-03-01", end_date: "2016-03-02" )
      tp get_hist_data('600848', ktype: '30')
      #tp get_hist_data("002411")
      #tp get_hist_data("002411", start_date: "2016-03-01", end_date: "2016-03-02")
    end 

    it 'can get tick data' do 
      tp get_tick_data('600848', '2015-04-07')
    end
  end

end
