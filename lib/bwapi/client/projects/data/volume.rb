module BWAPI
  class Client
    module Projects
      module Data
        # Volume module for projects/data/volume endpoints
        module Volume
          # Get all chart data for date ranges broken down by days
          #
          # @param project_id [Integer] Id of project
          # @param opts [Hash] options hash of parameters
          # @option opts [Hash] filter The filters to apply
          # @option opts [Array] dateRanges Date range ids
          # @return [Hashie::Mash] All Chart data mentions
          def data_volume_date_ranges_days(project_id, opts = {})
            get "projects/#{project_id}/data/volume/dataRanges/days", opts
          end

          # Get a sub (top 10, by volume) items of the sites dimension
          #
          # @param project_id [Integer] Id of project
          # @option opts [Hash] filter The filters to apply
          def data_volume_queries_top_sites(project_id, opts = {})
            get "projects/#{project_id}/data/volume/queries/topsites", opts
          end

          # Get a list of topics compared by criteria using two different values for that criteria
          #
          # @param project_id [Integer] Id of project
          # @param criteria [String] The comparison criteria
          # @option opts [String] criteriaValue1 Value one for criteria
          # @option opts [String] criteriaValue2 Value one for criteria
          # @option opts [Hash] filter The filters to apply
          # @option opts [Float] minDifference The minimum criteria difference for a topic to be returned
          # @option opts [Integer] minVolume The minimum volume (number of mentions) for a topic to be returned
          # @option opts [Integer] limit The limit to return
          # @option opts [Integer] sampleSize The sample size
          def data_volume_topics_compare(project_id, criteria, opts = {})
            get "projects/#{project_id}/data/volume/topics/compare/#{criteria}", opts
          end

          # Get top topics for given query IDs
          #
          # @param project_id [Integer] Id of project
          # @option opts [Hash] filter The filters to apply
          # @option opts [Integer] limit The limit to return
          # @option opts [String] orderBy Parameter to sort by
          # @option opts [String] orderDirection Direction of sort
          def data_volume_topics_queries(project_id, opts = {})
            get "projects/#{project_id}/data/volume/topics/queries", opts
          end

          # Get top authors for given query IDs
          #
          # @param project_id [Integer] Id of project
          # @option opts [Hash] filter The filters to apply
          # @option opts [Integer] limit The limit to return
          # @option opts [String] orderBy Parameter to sort by
          # @option opts [String] orderDirection Direction of sort
          def data_volume_top_authors_queries(project_id, opts = {})
            get "projects/#{project_id}/data/volume/topauthors/queries", opts
          end

          # Get top authors for given query IDs alternative
          #
          # @param project_id [Integer] Id of project
          # @option opts [Hash] filter The filters to apply
          # @option opts [Integer] limit The limit to return
          # @option opts [String] orderBy Parameter to sort by
          # @option opts [String] orderDirection Direction of sort
          def data_volume_top_authors_queries_alt(project_id, opts = {})
            get "projects/#{project_id}/data/volume/topauthors/queries/alt", opts
          end

          # Get top sites for given query IDs
          #
          # @param project_id [Integer] Id of project
          # @option opts [Hash] filter The filters to apply
          # @option opts [Integer] limit The limit to return
          # @option opts [String] orderBy Parameter to sort by
          # @option opts [String] orderDirection Direction of sort
          def data_volume_top_sites_queries(project_id, opts = {})
            get "projects/#{project_id}/data/volume/topsites/queries", opts
          end

          # Get top tweeters for given query IDs
          #
          # @param project_id [Integer] Id of project
          # @option opts [Hash] filter The filters to apply
          # @option opts [Integer] limit The limit to return
          # @option opts [String] orderBy Parameter to sort by
          # @option opts [String] orderDirection Direction of sort
          def data_volume_top_tweeters_queries(project_id, opts = {})
            get "projects/#{project_id}/data/volume/toptweeters/queries", opts
          end
        end
      end
    end
  end
end
