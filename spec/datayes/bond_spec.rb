require 'spec_helper'

describe Tushare::Datayes do
  before do
    @datayes = Tushare::Datayes
  end

  it 'can get bond data' do
    tp @datayes.bond(nil, '000001')
  end

  it 'can get bond_cf data' do
    tp @datayes.bond_cf(nil, '000001')
  end

  it 'can get bond_coupon data' do
    tp @datayes.bond_coupon(nil, '000001')
  end

  it 'can get bond_guar data' do
    tp @datayes.bond_guar(nil, '038001')
  end

  it 'can get bond_issue data' do
    tp @datayes.bond_issue(nil, '000001')
  end

  it 'can get bond_option data' do
    tp @datayes.bond_option(nil, '125002')
  end

  it 'can get bond_rating data' do
    tp @datayes.bond_rating(nil, '125069')
  end

  it 'can get guar_rating data' do
    tp @datayes.guar_rating(nil, '088052')
  end

  it 'can get issuer_rating data' do
    tp @datayes.issuer_rating(nil, '050302')
  end

  it 'can get repo data' do
    tp @datayes.repo(nil, '131800')
  end
end
