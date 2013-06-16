require 'faraday_middleware'
require 'faraday/response/brandwatch_error'
require 'faraday/utils/utils'

module BWAPI
  module Connection
    private

    # Create a connection to send request
    def connection opts={}
      connection = Faraday.new(opts) do |conn|

        if opts[:force_urlencoded]
          conn.request :url_encoded
        else
          conn.request :json
        end

        conn.request :json
        conn.use Faraday::Response::BrandwatchError
        conn.use FaradayMiddleware::FollowRedirects
        conn.use FaradayMiddleware::Mashify
        conn.use FaradayMiddleware::ParseJson, :content_type => /\bjson$/
        conn.adapter adapter
      end

      connection.headers[:user_agent] = user_agent

      connection
    end

  end
end