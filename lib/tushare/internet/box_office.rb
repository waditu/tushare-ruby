require 'tushare/util'

module Tushare
  module Internet
    # 电影票房
    module BoxOffice
      extend Tushare::Util
      extend self

      # 获取实时电影票房数据
      # 数据来源：EBOT艺恩票房智库
      #  return
      #  -------
      #     DataFrame
      #           BoxOffice     实时票房（万）
      #           Irank         排名
      #           MovieName     影片名
      #           boxPer        票房占比 （%）
      #           movieDay      上映天数
      #           sumBoxOffice  累计票房（万）
      #           time          数据获取时间
      def realtime_boxoffice
        url = format(MOVIE_BOX, P_TYPE['http'], DOMAINS['mbox'], BOX, _random)
        resp = HTTParty.get url
        return nil if resp.body.length < 15
        json = JSON.parse resp
        result = []
        now = Time.now
        json['data2'].each do |object|
          object.delete 'MovieImg'
          object.delete 'mId'
          object['time'] = now
          result << object
        end
        result
      end

      # 获取单日电影票房数据
      # 数据来源：EBOT艺恩票房智库
      # Parameters
      # ------
      #     date:日期，默认为上一日
      #  return
      #  -------
      #     DataFrame
      #           AvgPrice      平均票价
      #           AvpPeoPle     场均人次
      #           BoxOffice     单日票房（万）
      #           BoxOffice_Up  环比变化 （%）
      #           IRank         排名
      #           MovieDay      上映天数
      #           MovieName     影片名
      #           SumBoxOffice  累计票房（万）
      #           WomIndex      口碑指数
      def day_boxoffice(date = nil)
        date = if date.nil?
                 0
               else
                 Date.today - Date.parse(date) + 1
               end
        url = format(BOXOFFICE_DAY, P_TYPE['http'], DOMAINS['mbox'], BOX, date,
                     _random)
        resp = HTTParty.get url
        return nil if resp.body.length < 15
        json = JSON.parse resp
        result = []
        json['data1'].each do |object|
          %w(MovieImg BoxOffice1 MovieID Director IRank_pro).each do |key|
            object.delete key
          end
          result << object
        end
        result
      end

      # 获取单月电影票房数据
      # 数据来源：EBOT艺恩票房智库
      # Parameters
      # ------
      #     date:日期，默认为上一月，格式YYYY-MM
      #  return
      #  -------
      #     DataFrame
      #           Irank         排名
      #           MovieName     电影名称
      #           WomIndex      口碑指数
      #           avgboxoffice  平均票价
      #           avgshowcount  场均人次
      #           box_pro       月度占比
      #           boxoffice     单月票房(万)
      #           days          月内天数
      #           releaseTime   上映日期
      def month_boxoffice(date = nil)
        date = Date.today.prev_month.strftime('%Y-%m') if date.nil?
        raise BOX_INPUT_ERR_MSG if date.length > 8
        date += '-01'
        url = format(BOXOFFICE_MONTH, P_TYPE['http'], DOMAINS['mbox'], BOX,
                     date)
        resp = HTTParty.get url
        return nil if resp.body.length < 15
        json = JSON.parse resp
        result = []
        json['data1'].each do |object|
          %w(defaultImage EnMovieID).each do |key|
            object.delete key
          end
          result << object
        end
        result
      end

      # 获取影院单日票房排行数据
      # 数据来源：EBOT艺恩票房智库
      # Parameters
      # ------
      #     date:日期，默认为上一日
      #  return
      #  -------
      #     DataFrame
      #           Attendance         上座率
      #           AvgPeople          场均人次
      #           CinemaName         影院名称
      #           RowNum             排名
      #           TodayAudienceCount 当日观众人数
      #           TodayBox           当日票房
      #           TodayShowCount     当日场次
      #           price              场均票价（元）
      def day_cinema(date = nil)
        date = Date.today.prev_day.strftime('%F') if date.nil?
        _write_head
        result = []
        1.upto(11) do |page|
          url = format(BOXOFFICE_CBD, P_TYPE['http'], DOMAINS['mbox'], BOX,
                       page, date)
          resp = HTTParty.get url
          next if resp.body.length < 15
          json = JSON.parse resp.body
          json['data1'].each do |object|
            object.delete 'CinemaID'
            result << object
          end
        end
        result
      end

      private

      def _random(n = 13)
        start_integer = 10**(n - 1)
        end_integer = (10**n) - 1
        rand(start_integer..end_integer)
      end
    end
  end
end
