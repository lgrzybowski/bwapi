module BWAPI
  class Client
    module Projects
      module Data
        # AudienceActivity module for projects/data/audienceActivity endpoints
        module AudienceActivity
          # Get all audience activity data for queries broken down by a second dimension
          #
          # @param project_id [Integer] Id of project
          # @param dimension_two [String] Dimension 2 value
          # @param opts [Hash] options hash of parameters
          # @option opts [Hash] filter The filters to apply
          # @return [Hash] All data audience activity queries mentions
          def data_audience_activity_queries(project_id, dimension_two, opts = {})
            get "projects/#{project_id}/data/audienceActivity/queries/#{dimension_two}", opts
          end
        end
      end
    end
  end
end
