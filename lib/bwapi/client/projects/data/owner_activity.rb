module BWAPI
  class Client
    module Projects
      module Data
        # OwnerActivity module for projects/data/ownerActivity endpoints
        module OwnerActivity
          # Get all owner activity data for queries broken down by a second dimension
          #
          # @param project_id [Integer] Id of project
          # @param dimension_two [String] Dimension 2 value
          # @param opts [Hash] options hash of parameters
          # @option opts [Hash] filter The filters to apply
          # @return [Hash] All data owner activity queries mentions
          def data_owner_activity_queries(project_id, dimension_two, opts = {})
            get "projects/#{project_id}/data/ownerActivity/queries/#{dimension_two}", opts
          end
        end
      end
    end
  end
end
