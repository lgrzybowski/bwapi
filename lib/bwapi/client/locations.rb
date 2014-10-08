module BWAPI
  class Client
    # Location module for locations endpoints
    module Locations
      # Request the information for a given location code
      #
      # @return [Hash] Information about the location
      def location(location_code)
        get "locations/#{location_code}"
      end

      # Locations a location name with candidates
      #
      # @param opts [String] prefix that the location starts with
      # @option opts [Array] a list of location types to return
      # @option opts [Integer] page number of results to retrieve
      # @option opts [Integer] pageSize of the results to retrieve
      # @return [Hash] The list of matching locations
      def locations(opts = {})
        get 'locations', opts
      end
    end
  end
end
