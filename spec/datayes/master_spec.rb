require 'spec_helper'

describe Tushare::Datayes do
  before do
    @datayes = Tushare::Datayes
  end

  it 'can get sec id data' do
    tp @datayes.sec_id(nil, nil, nil, '000001')
  end

  it 'can get trade_cal data' do
    tp @datayes.trade_cal('XSHG', '20160401', '20160501')
  end

  # it 'can get industry data' do
  #   tp @datayes.industry
  # end

  it 'can get sec_type_rel data' do
    tp @datayes.sec_type_rel(nil, '000001')
  end

  it 'can get equ_info data' do
    tp @datayes.equ_info('000001')
  end

  it 'can get sec_type_region_rel data' do
    tp @datayes.sec_type_region_rel nil, '000001'
  end

  it 'can get sec_type data' do
    tp @datayes.sec_type
  end

  it 'can get sec_type_region data' do
    tp @datayes.sec_type_region
  end

  # it 'can get sys_code data' do
  #   tp @datayes.sys_code
  # end
end
