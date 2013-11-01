module BWAPI
  class Client
    module Projects
      # QueryGroups module for projects/queryGroups endpoints
      module QueryGroups

        # Get all query groups in project
        #
        # @param project_id [Integer] Id of project
        # @option opts [Integer] page Page of projects to retrieve
        # @option opts [Integer] pageSize Results per page of results
        # @return [Hashie::Mash] All query groups in project
        def query_groups project_id, opts={}
          get "projects/#{project_id}/querygroups", opts
        end

        # Get a specific query group in project
        #
        # @param project_id [Integer] Id of project
        # @param query_group_id [Integer] Id of query group
        # @return [Hashie::Mash] Specific query group
        def get_query_group project_id, query_group_id
          get "projects/#{project_id}/querygroups/#{query_group_id}"
        end
        alias :query_group :get_query_group

        # Create a new query group in project
        #
        # @param project_id [Integer] Id of project
        # @param opts [Hash] options hash of parameters
        # @option opts [Integer] id Id of the query group
        # @option opts [String] name Name of the query group
        # @option opts [String] shared Shared mode of query group
        # @option opts [Array] users Users which this query group belongs to
        # @option opts [Array] queries Queries within the query group
        # @option opts [Hash] sharedProjectIds Projects which this query group belongs to
        # @return [Hashie::Mash] New query group
        def create_query_group project_id, opts={}
          post "projects/#{project_id}/querygroups", opts
        end

        # Update an existing query group in project
        #
        # @param project_id [Integer] Id of project
        # @param query_group_id [Integer] Id of query group
        # @param opts [Hash] options hash of parameters
        # @option opts [Integer] projectId Id of the project
        # @option opts [Integer] queryGroupId of the query group
        # @option opts [String] name Name of the query group
        # @option opts [String] shared Shared mode of query group
        # @option opts [Array] users Users which this query group belongs to
        # @option opts [Array] queries Queries within the query group
        # @option opts [Hash] sharedProjectIds Projects which this query group belongs to
        # @return [Hashie::Mash] New query group
        def update_query_group project_id, query_group_id, opts={}
          put "projects/#{project_id}/querygroups/#{query_group_id}", opts
        end

        # Delete an existing query group in project
        #
        # @param project_id [Integer] Id of project
        # @param query_group_id [Integer] Id of query group
        # @return [Hashie::Mash] Deleted query group
        def delete_query_group project_id, query_group_id
          delete "projects/#{project_id}/querygroups/#{query_group_id}"
        end

      end
    end
  end
end