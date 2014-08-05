require 'faraday'

module BWAPI
  module Response
    # Brandwatch response middleware to handle logging
    class Logger < Faraday::Response::Middleware
      def initialize(app, client)
        super(app)
        @client = client
      end

      def logger
        @logger = @client.logger || begin
          require 'logger'
          ::Logger.new(STDOUT)
        end
      end

      def call(env)
        logger.info("Request: #{env.method.upcase} - #{env.url}")
        logger.debug("Request headers: #{dump_output(env.request_headers)}")
        super
      end

      def on_complete(env)
        logger.info("Response Status: #{env.status}")
        logger.debug("Response headers: #{dump_output(env.response_headers)}")
      end

      def dump_output(object)
        object.map { |key, value| "#{key}: #{value.inspect}" }.join(', ')
      end
    end
  end
end
