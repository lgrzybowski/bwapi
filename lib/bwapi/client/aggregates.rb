module BWAPI
  class Client
    # Aggregates module for aggregates endpoints
    module Aggregates
      # Get the list of current aggregate dimensions
      #
      # @return [Array] All aggregates
      def aggregates
        get 'aggregates'
      end
    end
  end
end
