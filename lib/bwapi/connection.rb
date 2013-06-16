require 'faraday_middleware'

module Brandwatch
  module Connection

    def connection
      connection = Faraday::Connection.new(url: base_uri) do |builder|
        builder.request   :json
        builder.response  :xml, :content_type => /\xml$/
        builder.response  :json, :content_type => /\bjson$/
        builder.use Faraday::Response::MultiJson
        builder.use Faraday::Response::Mashify
        builder.adapter adapter
      end

      connection

      binding.pry
    end

  end
end