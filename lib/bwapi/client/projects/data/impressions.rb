module BWAPI
  class Client
    module Projects
      module Data
        # Impressions module for projects/data/impressions endpoints
        module Impressions
          # Get all impressions data for queries broken down by a second dimension
          #
          # @param project_id [Integer] Id of project
          # @param dimension_two [String] Dimension 2 value
          # @param opts [Hash] options hash of parameters
          # @option opts [Hash] filter The filters to apply
          # @return [Hash] All data impressions queries mentions
          def data_impressions_queries(project_id, dimension_two, opts = {})
            get "projects/#{project_id}/data/impressions/queries/#{dimension_two}", opts
          end
        end
      end
    end
  end
end
