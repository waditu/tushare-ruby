require 'spec_helper'

describe Tushare::Datayes do
  before do
    @datayes = Tushare::Datayes
  end

  it 'can get fund data' do
    tp @datayes.fund(ticker: '000001')
  end

  it 'can get fund_nav data' do
    tp @datayes.fund_nav(ticker: '000001', begin_date: '20140101',
                         end_date: '20141231')
  end

  it 'can get fund_divm data' do
    tp @datayes.fund_divm(ticker: '003003', begin_date: '20140101',
                          end_date: '20141231')
  end

  it 'can get fund_div data' do
    tp @datayes.fund_div(ticker: '000001')
  end

  it 'can get fund_assets data' do
    tp @datayes.fund_assets(ticker: '000001')
  end

  it 'can get fund_holdings data' do
    tp @datayes.fund_holdings(ticker: '000001')
  end

  it 'can get fund_etf_pr_list data' do
    tp @datayes.fund_etf_pr_list(ticker: '510700')
  end

  it 'can get fund_etf_cons data' do
    tp @datayes.fund_etf_cons(ticker: '510700', begin_date: '20150115',
                              end_date: '20150127')
  end

  it 'can get fund_rating data' do
    tp @datayes.fund_rating(ticker: '160611')
  end

  it 'can get fund_shares_chg data' do
    tp @datayes.fund_shares_chg(ticker: '000001')
  end

  it 'can get fund_leverage_info data' do
    tp @datayes.fund_leverage_info(ticker: '000001')
  end
end
