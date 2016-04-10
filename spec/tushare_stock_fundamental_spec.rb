require 'spec_helper'

describe Tushare::Stock do
  before do
    @stock = Tushare::Stock.new
  end

  describe 'Fundamental' do
    it 'can get stock basic data' do
      p @stock.get_stock_basics
    end

    it 'can get report data ' do
      p @stock.get_report_data(2015, 1)
    end

    it 'can get profit data' do
      p @stock.get_profit_data(2015, 1)
    end

    it 'can get operation data' do
      p @stock.get_operation_data(2015, 1)
    end

    it 'can get growth data' do
      p @stock.get_growth_data(2015, 1)
    end

    it 'can get debtpaying data' do
      p @stock.get_debtpaying_data(2015, 1)
    end

    it 'can get cashflow data' do
      tp @stock.get_cashflow_data(2015, 1)
    end
  end
end
