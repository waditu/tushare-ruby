require 'spec_helper'

describe Tushare::Datayes do
  before do
    @datayes = Tushare::Datayes
  end

  it 'can get bond data' do
    tp @datayes.bond(ticker: '000001')
  end

  it 'can get bond_cf data' do
    tp @datayes.bond_cf(ticker: '000001')
  end

  it 'can get bond_coupon data' do
    tp @datayes.bond_coupon(ticker: '000001')
  end

  it 'can get bond_guar data' do
    tp @datayes.bond_guar(ticker: '038001')
  end

  it 'can get bond_issue data' do
    tp @datayes.bond_issue(ticker: '000001')
  end

  it 'can get bond_option data' do
    tp @datayes.bond_option(ticker: '125002')
  end

  it 'can get bond_rating data' do
    tp @datayes.bond_rating(ticker: '125069')
  end

  it 'can get guar_rating data' do
    tp @datayes.guar_rating(ticker: '088052')
  end

  it 'can get issuer_rating data' do
    tp @datayes.issuer_rating(ticker: '050302')
  end

  it 'can get repo data' do
    tp @datayes.repo(ticker: '131800')
  end
end
