module BWAPI
  class Client
    # Metrics module for metrics endpoints
    module Metrics
      # Get the current metrics list
      #
      # @return [Hash] Metrics information
      def metrics
        get 'metrics'
      end
    end
  end
end
