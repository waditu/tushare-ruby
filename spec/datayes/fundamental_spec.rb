require 'spec_helper'

describe Tushare::Datayes do
  before do
    @datayes = Tushare::Datayes
  end

  it 'can get fdmt_bs data' do
    tp @datayes.fdmt_bs(ticker: '000001')
  end

  it 'can get fdmt_bs_bank data' do
    tp @datayes.fdmt_bs_bank(ticker: '000001')
  end

  it 'can get fdmt_bs_secu data' do
    tp @datayes.fdmt_bs_secu(ticker: '600369')
  end

  it 'can get fdmt_bs_indu data' do
    tp @datayes.fdmt_bs_indu(ticker: '603008')
  end

  it 'can get fdmt_bs_insu data' do
    tp @datayes.fdmt_bs_insu(ticker: '601318')
  end

  it 'can get fdmt_cf data' do
    tp @datayes.fdmt_cf(ticker: '000001')
  end

  it 'can get fdmt_cf_bank data' do
    tp @datayes.fdmt_cf_bank(ticker: '000001')
  end

  it 'can get fdmt_cf_secu data' do
    tp @datayes.fdmt_cf_secu(ticker: '600369')
  end

  it 'can get fdmt_cf_indu data' do
    tp @datayes.fdmt_cf_indu(ticker: '603008')
  end

  it 'can get fdmt_cf_insu data' do
    tp @datayes.fdmt_cf_insu(ticker: '601318')
  end

  it 'can get fdmt_is data' do
    tp @datayes.fdmt_is(ticker: '000001')
  end

  it 'can get fdmt_is_bank data' do
    tp @datayes.fdmt_is_bank(ticker: '000001')
  end

  it 'can get fdmt_is_secu data' do
    tp @datayes.fdmt_is_secu(ticker: '600369')
  end

  it 'can get fdmt_is_indu data' do
    tp @datayes.fdmt_is_indu(ticker: '603008')
  end

  it 'can get fdmt_is_insu data' do
    tp @datayes.fdmt_is_insu(ticker: '601318')
  end

  it 'can get fdmt_ee data' do
    tp @datayes.fdmt_ee(ticker: '600000')
  end

  it 'can get fdmt_ef data' do
    tp @datayes.fdmt_ef(ticker: '000001')
  end

  it 'can get fdmt_is_lately data' do
    tp @datayes.fdmt_is_lately()
  end
end
