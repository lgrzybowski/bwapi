module BWAPI
  class Client
    module Projects
      module Data
        # Audience module for projects/data/audience endpoints
        module Audience
          # Get all audience data for queries broken down by a second dimension
          #
          # @param project_id [Integer] Id of project
          # @param dimension_two [String] Dimension 2 value
          # @param opts [Hash] options hash of parameters
          # @option opts [Hash] filter The filters to apply
          # @return [Hash] All data audience queries mentions
          def data_audience_queries(project_id, dimension_two, opts = {})
            get "projects/#{project_id}/data/audience/queries/#{dimension_two}", opts
          end
        end
      end
    end
  end
end
