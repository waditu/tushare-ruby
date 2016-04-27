require 'spec_helper'

describe Tushare::Stock::Classifying do
  before do
    @stock = Tushare::Stock::Classifying
  end

  describe 'Classifying' do
    it 'can get industry_classified data' do
      tp @stock.industry_classified
    end

    it 'can get concept_classified data' do
      tp @stock.concept_classified
    end

    it 'can get area_classified data' do
      tp @stock.area_classified
    end

    it 'can get gem_classified data' do
      tp @stock.gem_classified
    end

    it 'can get sme_classified data' do
      tp @stock.sme_classified
    end

    it 'can get st_classified data' do
      tp @stock.st_classified
    end

    it 'can get hs300s data' do
      tp @stock.hs300s
    end

    it 'can get sz50s data' do
      tp @stock.sz50s
    end

    it 'can get zz500s data' do
      tp @stock.zz500s
    end

    it 'can get terminated data' do
      tp @stock.terminated
    end

    it 'can get suspended data' do
      tp @stock.suspended
    end
  end
end
