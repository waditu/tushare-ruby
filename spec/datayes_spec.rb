require 'spec_helper'

describe Tushare::Datayes do
  before do
    @datayes = Tushare::Datayes
  end

  it 'can get token' do
    expect(@datayes.token).to eql ''
  end

  it 'can set token' do
    token = 'abc'
    @datayes.token = token
    expect(@datayes.token).to eql(token)
  end
end
