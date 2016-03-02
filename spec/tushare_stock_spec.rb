require 'spec_helper'

describe Tushare::Stock do
  
  include Tushare::Stock
  
  describe "Trading" do 
    it 'can get hist data' do 
      tp get_hist_data("sh",  "2016-03-01", "2016-03-02" )
      #tp get_hist_data("002411")
      #tp get_hist_data("002411", "2016-03-01", "2016-03-02")
      #tp get_hist_data("002411", "2016-03-01", "2016-03-02", "5")
    end 
  end

end
