# encoding: utf-8

module BWAPI
  class Client
    # Location module for locations endpoints
    module Location
      # Request the information for a given location code
      #
      # @return [Hashie::Mash] Information about the location
      def location(location_code)
        get "location/#{location_code}"
      end

      # Autocomplete a location name with candidates
      #
      # @param opts [String] prefix that the location starts with
      # @option opts [Array] a list of location types to return
      # @option opts [Integer] page number of results to retrieve
      # @option opts [Integer] pageSize of the results to retrieve
      # @return [Hashie::Mash] The list of matching locations
      def location_autocomplete(opts = {})
        post 'location/autocomplete', opts
      end
    end
  end
end
