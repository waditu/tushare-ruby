require 'spec_helper'

describe Tushare::Stock::NewsEvent do
  before do
    @stock = Tushare::Stock::NewsEvent
  end

  describe 'Reference' do
    it 'can get latest news' do
      tp @stock.latest_news
    end

    it 'can get notices' do
      tp @stock.notices('600011')
    end

    it 'can get guba_sina' do
      tp @stock.guba_sina
    end
  end
end
