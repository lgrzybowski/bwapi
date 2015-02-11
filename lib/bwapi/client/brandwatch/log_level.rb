module BWAPI
  class Client
    module Brandwatch
      # Loglevel module for brandwatch/log-level endpoint
      module LogLevel
        # Change the API LogLevel
        #
        # @param opts [Hash] options hash of parameters
        # @option opts [String] logLevel for API2
        # @return [Array] Returns the updated log level
        def brandwatch_log_level(opts = {})
          post 'brandwatch/log-level', opts
        end
      end
    end
  end
end
