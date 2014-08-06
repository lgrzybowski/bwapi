require 'bwapi/response/error'
require 'bwapi/response/logger'
require 'bwapi/response/performance'
require 'faraday_middleware'

module BWAPI
  # Connection module
  module Connection
    RACK_BUILDER_CLASS = defined?(Faraday::RackBuilder) ? Faraday::RackBuilder : Faraday::Builder

    private

    def connection
      @connection ||= Faraday.new(faraday_options)
    end

    def reset_connection
      @connection = nil
    end

    def faraday_options
      opts                           = @connection_options
      opts[:headers][:authorization] = "bearer #{@access_token}" if @access_token
      opts[:builder]                 = middleware
      opts[:ssl]                     = { verify: @verify_ssl }
      opts[:url]                     = @api_endpoint
      opts
    end

    def middleware
      RACK_BUILDER_CLASS.new do |builder|
        builder.request :json

        builder.use BWAPI::Response::Performance, self if debug
        builder.use BWAPI::Response::Error
        builder.use BWAPI::Response::Logger, self if debug

        builder.response :mashify
        builder.response :follow_redirects
        builder.response :json, :content_type => /\bjson$/

        builder.adapter Faraday.default_adapter
      end
    end
  end
end
