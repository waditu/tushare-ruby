require 'spec_helper'

describe Tushare::Datayes do
  before do
    @datayes = Tushare::Datayes
  end

  it 'can get idx data' do
    tp @datayes.idx(ticker: '000001')
  end

  it 'can get idx_cons data' do
    tp @datayes.idx_cons(ticker: '000300')
  end
end
