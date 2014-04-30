# encoding: utf-8

require 'faraday_middleware'
require 'faraday/response/brandwatch_error'

module BWAPI
  # Connection module to handle requests
  module Connection
    private

    # Create a connection to send request
    def connection(opts = {})
      connection = Faraday.new(opts) do |c|
        c.use FaradayMiddleware::FollowRedirects
        c.use BrandwatchError
        c.use FaradayMiddleware::Mashify
        c.use FaradayMiddleware::ParseJson, content_type: /\bjson$/
        c.adapter adapter
      end
      connection.headers[:user_agent] = user_agent
      connection
    end
  end
end
