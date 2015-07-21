module BWAPI
  class Client
    module Admin
      # Become module for admin/projects endpoint
      module Projects
        # Lock an existing query in project
        #
        # @param project_id [Integer] Id of project
        # @param query_id [Integer] Id of query
        # @return [Hash] Locked query
        def lock_query(project_id, query_id)
          post "admin/projects/#{project_id}/queries/#{query_id}/lock"
        end

        # Unlock an existing query in project
        #
        # @param project_id [Integer] Id of project
        # @param query_id [Integer] Id of query
        # @return [Hash] Unlocked query
        def unlock_query(project_id, query_id)
          delete "admin/projects/#{project_id}/queries/#{query_id}/lock"
        end
      end
    end
  end
end
