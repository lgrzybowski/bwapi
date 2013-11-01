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

        # Get all chart data for date ranges broken down by days
        #
        # @param project_id [Integer] Id of project
        # @param opts [Hash] options hash of parameters
        # @option opts [Integer] projectId Id of the project
        # @option opts [Hash] filter The filters to apply
        # @option opts [Array] dateRanges Date range ids
        # @return [Hashie::Mash] All Chart data mentions
        def data_date_ranges_days project_id, opts
          get "projects/#{project_id}/data/volume/dataRanges/days", opts
        end

        # Get mentions that fall within the submitted filters
        #
        # @param project_id [Integer] Id of project
        # @param opts [Hash] options hash of parameters
        # @option opts [Integer] projectId Id of the project
        # @option opts [Hash] filter The filters to apply
        # @option opts [Integer] page Page of projects to retrieve
        # @option opts [Integer] pageSize Results per page of results
        # @option opts [String] :orderBy Parameter to sort by
        # @option opts [String] :orderDirection Direction of sort
        # @option opts [Integer] :orderByCategory Category to sort by when orderBy category
        # @return [Hashie::Mash] All Mentions
        def data_mentions project_id, opts={}
          get "projects/#{project_id}/data/mentions", opts
        end

        # Update mentions for project
        #
        # @param project_id [Integer] Id of project
        # @param opts [Hash] options hash of parameters
        # @option opts [Integer] projectId Id of the project
        # @option opts [Hash] List The patches to be applied
        # @return [Hashie::Mash] Updated mentions
        def update_data_mentions project_id, opts={}
          patch "projects/#{project_id}/data/mentions", opts
        end

      end
    end
  end
end