require 'spec_helper'

describe Tushare::Stock::Billboard do
  before do
    @stock = Tushare::Stock::Billboard
  end

  describe 'Billboard' do
    it 'can get top_list data' do
      tp @stock.top_list
    end

    it 'can get cap_tops data' do
      tp @stock.cap_tops
    end

    it 'can get broker_tops data' do
      tp @stock.broker_tops
    end

    it 'can get inst_tops data' do
      tp @stock.inst_tops
    end

    it 'can get inst_detail data' do
      tp @stock.inst_detail
    end
  end
end
