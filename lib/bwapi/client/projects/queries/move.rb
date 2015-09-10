module BWAPI
  class Client
    module Projects
      module Queries
        # Move module for queries endpoints
        module Move
          # Move query to different project
          #
          # @param project_id [Integer] Id of original project
          # @param query_id [Integer] Id of original query
          # @param dest_project_id [Integer] Id of destination project
          # @return [Hash] Returns move status
          def update_move(project_id, query_id, dest_project_id)
            post "/projects/#{project_id}/queries/#{query_id}/move/#{dest_project_id}"
          end
        end
      end
    end
  end
end
