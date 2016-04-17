require 'spec_helper'

#bundle exec rspec spec
describe Tushare::Stock::Shibor do
  before do
    @stock = Tushare::Stock::Shibor
  end

  describe 'Shibor' do
    it 'can get shibor data' do
      tp @stock.shibor_data
    end

    it 'can get shibor quote data' do
      tp @stock.shibor_quote_data
    end

    it 'can get shibor ma data' do
      tp @stock.shibor_ma_data
    end

    it 'can get LPR data' do
      tp @stock.lpr_data
    end

    it 'can get LPR MA data' do
      tp @stock.lpr_ma_data
    end
  end
end
