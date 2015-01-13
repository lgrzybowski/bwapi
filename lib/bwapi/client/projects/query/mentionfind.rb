module BWAPI
  class Client
    module Projects
      module Query
        # mentionfind module for projects/project_id/query/query_id/mentionfind endpoint
        module MentionFind
          # Returns the mention for a specific URL
          #
          # @param project_id [Integer] Id of project
          # @param query id [Integer] Id of the query
          # @param opts [hash] options Hash of parameters
          # @option opts [string] URL of the mention
          # @return [Hash] Returns whether a URL is in a query
          def mention_find(project_id, query_id, opts = {})
            get "projects/#{project_id}/query/#{query_id}/mentionfind", opts
          end
        end
      end
    end
  end
end
