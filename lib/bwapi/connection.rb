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
        c.request :json

        c.use BrandwatchError

        c.response :mashify
        c.response :follow_redirects
        c.response :json, content_type: /\bjson$/

        c.adapter adapter
      end
      connection
    end
  end
end
