require 'spec_helper'

describe Tushare::Datayes do
  before do
    @datayes = Tushare::Datayes
  end

  it 'can get futu data' do
    tp @datayes.futu(ticker: 'cu1106')
  end

  it 'can get futu_convf data' do
    tp @datayes.futu_convf(ticker: 'TF1503')
  end
end
