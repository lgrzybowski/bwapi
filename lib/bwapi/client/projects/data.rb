require 'bwapi/client/projects/data/mentions'
require 'bwapi/client/projects/data/volume'

module BWAPI
  class Client
    module Projects
      # Data module for projects/data endpoints
      module Data

        # Get all chart data for the requested dimensions
        #
        # @param project_id [Integer] Id of project
        # @param aggregate [String] Aggregate value
        # @param dimension_one [String] Dimension 1 value
        # @param dimension_two [String] Dimension 2 value
        # @param opts [Hash] options hash of parameters
        # @option opts [Integer] projectId Id of the project
        # @option opts [Hash] filter The filters to apply
        # @return [Hashie::Mash] All Chart data mentions
        def data project_id, aggregate, dimension_one, dimension_two, opts={}
          get "projects/#{project_id}/data/#{aggregate}/#{dimension_one}/#{dimension_two}", opts
        end

        include BWAPI::Client::Projects::Data::Mentions
        include BWAPI::Client::Projects::Data::Volume

      end
    end
  end
end