require 'spec_helper'

describe Tushare::Datayes do
  before do
    @datayes = Tushare::Datayes
  end

  it 'can get equ data' do
    tp @datayes.equ(ticker: '000001')
  end

  it 'can get equ_allot data' do
    tp @datayes.equ_allot(ticker: '000001')
  end

  it 'can get equ_div data' do
    tp @datayes.equ_div(ticker: '000001')
  end

  it 'can get equ_industry data' do
    tp @datayes.equ_industry(ticker: '000001')
  end

  it 'can get equ_ipo data' do
    tp @datayes.equ_ipo(ticker: '000001')
  end

  it 'can get equ_ref data' do
    tp @datayes.equ_ref(ticker: '000001')
  end

  it 'can get equ_retud data' do
    tp @datayes.equ_retud(ticker: '000001', begin_date: '20160401')
  end

  it 'can get equ_splits data' do
    tp @datayes.equ_splits(ticker: '000887')
  end

  it 'can get fst_total data' do
    tp @datayes.fst_total(begin_date: '20160425', end_date: '20160428')
  end

  it 'can get fst_detail data' do
    tp @datayes.fst_detail(ticker: '000001')
  end

  it 'can get equ_share data' do
    tp @datayes.equ_share(ticker: '000001')
  end

  # it 'can get sec_st data' do
  #   tp @datayes.sec_st(ticker: '000001')
  # end
end
