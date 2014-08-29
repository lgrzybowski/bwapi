module BWAPI
  class Client
    # Filters module for filters endpoint
    module Filters
      # Get the currently supported filters
      #
      # @return [Hash] Current filters
      def filters
        get 'filters'
      end
    end
  end
end
