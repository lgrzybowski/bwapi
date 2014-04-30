# encoding: utf-8

module BWAPI
  class Client
    # Metrics module for metrics endpoints
    module Metrics
      # Get the current metrics list
      #
      # @return [Hashie::Mash] Metrics information
      def metrics
        get 'metrics'
      end
    end
  end
end
