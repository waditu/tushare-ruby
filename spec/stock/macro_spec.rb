require 'spec_helper'

describe Tushare::Stock::Macro do
  before do
    @stock = Tushare::Stock::Macro
  end

  describe 'Macro' do
    it 'can get gdp_year data' do
      tp @stock.gdp_year
    end

    it 'can get gdp_quarter data' do
      tp @stock.gdp_quarter
    end

    it 'can get gdp_for data' do
      tp @stock.gdp_for
    end

    it 'can get gdp_pull data' do
      tp @stock.gdp_pull
    end

    it 'can get gdp_contrib data' do
      tp @stock.gdp_contrib
    end

    it 'can get cpi data' do
      tp @stock.cpi
    end

    it 'can get ppi data' do
      tp @stock.ppi
    end

    it 'can get deposit_rate data' do
      tp @stock.deposit_rate
    end

    it 'can get loan_rate data' do
      tp @stock.loan_rate
    end

    it 'can get rrr data' do
      tp @stock.rrr
    end

    it 'can get money_supply data' do
      tp @stock.money_supply
    end

    it 'can get money_supply_bal data' do
      tp @stock.money_supply_bal
    end
  end
end
