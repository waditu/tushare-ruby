require 'spec_helper'

describe Tushare::Datayes do
  before do
    @datayes = Tushare::Datayes
  end

  it 'can get hk_equ data' do
    tp @datayes.hk_equ(ticker: '00169')
  end

  # it 'can get hk_equ_ca data' do
  #   tp @datayes.hk_equ_ca(ticker: '00001')
  # end
end
