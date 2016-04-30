require 'spec_helper'

describe Tushare::Internet::BoxOffice do
  before do
    @internet = Tushare::Internet::BoxOffice
  end

  describe 'BoxOffice' do
    it 'can get realtime_boxoffice data' do
      tp @internet.realtime_boxoffice
    end

    it 'can get day_boxoffice data' do
      tp @internet.day_boxoffice
    end

    it 'can get month_boxoffice data' do
      tp @internet.month_boxoffice
    end

    it 'can get day_cinema data' do
      tp @internet.day_cinema
    end
  end
end
