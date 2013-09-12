module BWAPI
  class Client
    # Filters module for filters endpoint
    module Filters

      # Get the currently supported filters
      #
      # @return [Hashie::Mash] Current filters
      def filters
        get "filters"
      end

    end
  end
end