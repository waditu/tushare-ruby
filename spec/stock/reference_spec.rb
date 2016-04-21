require 'spec_helper'

describe Tushare::Stock::Reference do
  before do
    @stock = Tushare::Stock::Reference
  end

  describe 'Reference' do
    it 'can get profit data' do
      tp @stock.profit_data(2015)
    end

    it 'can get forecast data' do
      tp @stock.forecast_data(2016, 1)
    end

    it 'can get xsg_data' do
      tp @stock.xsg_data
    end

    it 'can get fund_holdings' do
      tp @stock.fund_holdings(2015, 1)
    end

    it 'can get new_stocks' do
      tp @stock.new_stocks
    end

    it 'can get sh_margins' do
      tp @stock.sh_margins
    end

    it 'can get sh_margin_details' do
      tp @stock.sh_margin_details
    end

    it 'can get sz_margins' do
      tp @stock.sz_margins
    end

    it 'can get sz_margin_details' do
      tp @stock.sz_margin_details
    end
  end
end
