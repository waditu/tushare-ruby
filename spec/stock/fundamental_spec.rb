require 'spec_helper'

describe Tushare::Stock::Fundamental do
  before do
    @stock = Tushare::Stock::Fundamental
  end

  describe 'Fundamental' do
    it 'can get stock basic data' do
      tp @stock.get_stock_basics
    end

    it 'can get report data ' do
      tp @stock.get_report_data(2015, 1)
    end

    it 'can get profit data' do
      tp @stock.get_profit_data(2015, 1)
    end

    it 'can get operation data' do
      tp @stock.get_operation_data(2015, 1)
    end

    it 'can get growth data' do
      tp @stock.get_growth_data(2015, 1)
    end

    it 'can get debtpaying data' do
      tp @stock.get_debtpaying_data(2015, 1)
    end

    it 'can get cashflow data' do
      tp @stock.get_cashflow_data(2015, 1)
    end
  end
end
