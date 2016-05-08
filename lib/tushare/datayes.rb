require 'tushare/datayes/constants'
require 'tushare/datayes/master'
require 'tushare/datayes/bond'
require 'tushare/datayes/equity'
require 'tushare/datayes/fund'
require 'tushare/datayes/fundamental'
require 'tushare/datayes/future'
require 'tushare/datayes/hk_equity'
require 'tushare/datayes/idx'
require 'tushare/datayes/iv'
require 'tushare/datayes/macro'
require 'tushare/datayes/market'
require 'tushare/datayes/options'
require 'tushare/datayes/subject'

module Tushare
  # Datayes module for 通联数据
  module Datayes
    extend Master
    extend Bond
    extend Equity
    extend Fund
    extend Fundamental
    extend Future
    extend HKEquity
    extend Idx
    extend IV
    extend Macro
    extend Market
    extend Options
    extend Subject

    def token
      @@token ||= ''
    end

    def token=(token)
      @@token = token
    end

    def fetch_data(api_path)
      url = URI.encode("https://#{HTTPS_URL}:#{HTTPS_PORT}/data/v1/#{api_path}")
      resp = HTTParty.get url, headers: { 'Authorization' => "Bearer #{token}" }
      raise resp['retMsg'] || resp['message'] if resp['retCode'] != SUCCESS_CODE
      resp['data']
    end

    module_function :token, :token=, :fetch_data
  end
end
