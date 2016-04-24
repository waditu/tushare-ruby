require 'tushare/util'

module Tushare
  module Stock
    # 新闻事件数据接口
    module NewsEvent
      extend Tushare::Util

      # 获取即时财经新闻

      # Parameters
      # --------
      #     top:数值，显示最新消息的条数，默认为80条
      #     show_content:是否显示新闻内容，默认False

      # Return
      # --------
      #     DataFrame
      #         classify :新闻类别
      #         title :新闻标题
      #         time :发布时间
      #         url :新闻链接
      #         content:新闻内容（在show_content为True的情况下出现）
      def latest_news(top = PAGE_NUM[2], show_content = false)
        url = format(LATEST_URL, P_TYPE['http'], DOMAINS['sina'],
                     PAGES['lnews'], top, _random)
        resp = HTTParty.get(url)
        events = eval(resp.body.encode('utf-8', 'gbk').sub('var ', '')
                          .delete(' '))[:list]
        result = []
        events.each do |event|
          object = {}
          object['classify'] = event[:channel][:title]
          object['title'] = event[:title]
          object['url'] = event[:url]
          object['time'] = Time.at(event[:time]).strftime('%m-%d %H:%M')
          object['content'] = latest_content(object['url']) if show_content
          result << object
        end
        result
      end

      # 个股信息地雷
      # Parameters
      # --------
      #     code:股票代码
      #     date:信息公布日期

      # Return
      # --------
      #     DataFrame，属性列表：
      #     title:信息标题
      #     type:信息类型
      #     date:公告日期
      #     url:信息内容URL
      def notices(code, date = nil)
        return nil if code.nil?
        symbol = code[0] == '6' ? "sh#{code}" : "sz#{code}"
        url = format(NOTICE_INFO_URL, P_TYPE['http'], DOMAINS['vsf'],
                     PAGES['ntinfo'], symbol)
        url = "#{url}&gg_date=#{date}" if date
        doc = Nokogiri::HTML(open(url), nil, 'gbk')
        rows = doc.css('table.body_table tbody tr')
        result = []
        rows.each do |row|
          object = {}
          a = row.css('th a')[0]
          tds = row.css('td')
          object['title'] = a.content
          object['type'] = tds[0].content
          object['date'] = tds[1].content
          object['url'] = "#{P_TYPE['http']}#{DOMAINS['vsf']}#{a.attr('href')}"
          result << object
        end
        result
      end

      # 获取信息地雷内容
      # Parameter
      # --------
      #     url:内容链接

      # Return
      # --------
      #     string:信息内容
      def notice_content(url)
        doc = Nokogiri::HTML(open(url))
        doc.css('div#content pre')[0].content.strip
      end

      # 获取sina财经股吧首页的重点消息
      # Parameter
      # --------
      #     show_content:是否显示内容，默认False

      # Return
      # --------
      # DataFrame
      #     title, 消息标题
      #     content, 消息内容（show_content=True的情况下）
      #     ptime, 发布时间
      #     rcounts,阅读次数
      def guba_sina(show_content = false)
        url = format(GUBA_SINA_URL, P_TYPE['http'], DOMAINS['sina'])
        doc = Nokogiri::HTML(open(url), nil, 'gbk')
        res = doc.css('ul.list_05 li')
        heads = doc.css('div.tit_04')
        result = []
        heads.each do |head|
          object = {}
          link = head.css('a').first
          object[:title] = link.content
          object[:url] = link.attr('href')
          object.merge!(_guba_content(object[:url]))
          object.delete(:content) unless  show_content
          result << object
        end
        res.each do |row|
          object = {}
          link = row.css('a')[1]
          object[:title] = link.text
          object[:url] = link.attr('href')
          object.merge!(_guba_content(object[:url]))
          object.delete(:content) unless  show_content
          result << object
        end

        result
      end

      private

      def _guba_content(url)
        doc = Nokogiri::HTML(open(url), nil, 'gbk')
        content = doc.css('div.ilt_p p').text
        ptime = doc.css('div.fl_left.iltp_time span').text
        rcounts_text = doc.css('div.fl_right.iltp_span span')[1].text
        rcounts = rcounts_text.gsub(/\D/, '')
        { content: content, ptime: ptime, rcounts: rcounts }
      end

      # 获取即时财经新闻内容
      # Parameter
      # --------
      #     url:新闻链接

      # Return
      # --------
      #     string:返回新闻的文字内容
      def latest_content(url)
        doc = Nokogiri::HTML(open(url))
        doc.css('div#artibody p').text
      end

      def _random(n = 16)
        start_point = 10 ** (n - 1)
        end_point = (10 ** n) - 1
        rand(start_point..end_point).to_s
      end

      module_function :latest_news, :notices, :guba_sina, :_guba_content,
                      :latest_content, :_random
    end
  end
end
