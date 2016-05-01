require 'spec_helper'

describe Tushare::Datayes do
  before do
    @datayes = Tushare::Datayes
  end

  it 'can get sec id' do
    tp @datayes.sec_id(nil, nil, nil, '000001')
  end
end
