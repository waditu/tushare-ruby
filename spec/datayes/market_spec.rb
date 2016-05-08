require 'spec_helper'

describe Tushare::Datayes do
  before do
    @datayes = Tushare::Datayes
  end

  # it 'can get tick_rt_snapshot data' do
  #   tp @datayes.tick_rt_snapshot(security_id: '000001.XSHG,000001.XSHE')
  # end

  # it 'can get tick_rt_snapshot_index data' do
  #   tp @datayes.tick_rt_snapshot_index(security_id: '000001.XSHG', field: '')
  # end

  # it 'can get future_tick_rt_snapshot data' do
  #   tp @datayes.future_tick_rt_snapshot(instrument_id: 'AG1612,AG1606', field: '')
  # end

  # it 'can get tick_rt_intra_day data' do
  #   tp @datayes.tick_rt_intra_day(security_id: '000001.XSHE', end_time: '11:00',
  #                                 start_time: '09:30', field: '')
  # end

  # it 'can get bar_rt_intra_day data' do
  #   tp @datayes.bar_rt_intra_day(security_id: '000001.XSHE')
  # end

  it 'can get bar_hist_intra_day data' do
    tp @datayes.bar_hist_intra_day(security_id: '', date: '', end_time: '',
                                   start_time: '', field: '')
  end

  it 'can get bar_hist_day_range data' do
    tp @datayes.bar_hist_day_range(security_id: '', start_date: '',
                                   end_date: '', field: '')
  end

  # it 'can get future_tick_rt_intra_day data' do
  #   tp @datayes.future_tick_rt_intra_day(instrument_id: 'AG1612',
  #                                        end_time: '10:15',
  #                                        start_time: '09:30')
  # end

  it 'can get future_bars_one_day data' do
    tp @datayes.future_bars_one_day(instrument_id: '', date: '', field: '')
  end

  it 'can get future_bars_day_range data' do
    tp @datayes.future_bars_day_range(instrument_id: '', start_date: '',
                                      end_date: '', field: '')
  end

  it 'can get stock_factors_one_day data' do
    tp @datayes.stock_factors_one_day(trade_date: '20150227', ticker: '000001')
  end

  it 'can get stock_factors_date_range data' do
    tp @datayes.stock_factors_date_range(ticker: '000001',
                                         begin_date: '20150101',
                                         end_date: '20150701')
  end

  it 'can get sec_tips data' do
    tp @datayes.sec_tips(tips_type_cd: 'H')
  end

  # it 'can get bar_rt_intra_day_one_minute data' do
  #   tp @datayes.bar_rt_intra_day_one_minute(time: '09:33', field: '')
  # end

  # it 'can get equ_rt_rank data' do
  #   tp @datayes.equ_rt_rank
  # end

  it 'can get mkt_m_futd data' do
    tp @datayes.mkt_m_futd(trade_date: '20150513')
  end

  # it 'can get option_tick_rt_snapshot data' do
  #   tp @datayes.option_tick_rt_snapshot(option_id: '10000001')
  # end

  # it 'can get future_bar_rt_intra_day data' do
  #   tp @datayes.future_bar_rt_intra_day(instrument_id: 'bu1612')
  # end

  # it 'can get industry_tick_rt_snapshot data' do
  #   tp @datayes.industry_tick_rt_snapshot
  # end

  it 'can get mkt_equd_lately data' do
    tp @datayes.mkt_equd_lately
  end

  it 'can get mkt_equd data' do
    tp @datayes.mkt_equd(ticker: '000001', trade_date: '20150513')
  end

  # it 'can get mkt_hk_equd data' do
  #   tp @datayes.mkt_hk_equd(trade_date: '20150513')
  # end

  it 'can get mkt_bondd data' do
    tp @datayes.mkt_bondd(trade_date: '20150513')
  end

  it 'can get mkt_repod data' do
    tp @datayes.mkt_repod(trade_date: '20150513')
  end

  it 'can get mkt_fundd data' do
    tp @datayes.mkt_fundd(trade_date: '20150513')
  end

  it 'can get mkt_futd data' do
    tp @datayes.mkt_futd(trade_date: '20150513')
  end

  it 'can get mkt_fut_mtr data' do
    tp @datayes.mkt_fut_mtr(ticker: 'a1605', begin_date: '20160501',
                            end_date: '20160506')
  end

  it 'can get mkt_fut_msr data' do
    tp @datayes.mkt_fut_msr(ticker: 'a1605', begin_date: '20160501',
                            end_date: '20160506')
  end

  it 'can get mkt_fut_mlr data' do
    tp @datayes.mkt_fut_mlr(ticker: 'a1605', begin_date: '20160501',
                            end_date: '20160506')
  end

  it 'can get mkt_idxd data' do
    tp @datayes.mkt_idxd(trade_date: '20150513')
  end

  it 'can get mkt_blockd data' do
    tp @datayes.mkt_blockd(trade_date: '20150513')
  end

  it 'can get mkt_optd data' do
    tp @datayes.mkt_optd(trade_date: '20150513')
  end

  # it 'can get mkt_equd_adj data' do
  #   tp @datayes.mkt_equd_adj(trade_date: '20150513')
  # end

  it 'can get mkt_adjf data' do
    tp @datayes.mkt_adjf(ticker: '000001')
  end

  it 'can get mkt_futd_vol data' do
    tp @datayes.mkt_futd_vol(ticker: 'fu1512', begin_date: '20150310')
  end

  it 'can get mkt_limit data' do
    tp @datayes.mkt_limit(ticker: '600000')
  end

  it 'can get mkt_fundd_adj_af data' do
    tp @datayes.mkt_fundd_adj_af(sec_id: '', ticker: '', begin_date: '',
                                 end_date: '', field: '')
  end
end
