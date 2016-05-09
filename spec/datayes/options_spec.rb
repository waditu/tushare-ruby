require 'spec_helper'

describe Tushare::Datayes do
  before do
    @datayes = Tushare::Datayes
  end

  it 'can get opt data' do
    tp @datayes.opt(contract_status: 'L')
  end

  it 'can get opt_var data' do
    tp @datayes.opt_var(ticker: '510050')
  end
end
