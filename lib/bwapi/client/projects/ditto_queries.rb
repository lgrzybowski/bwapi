module BWAPI
  class Client
    module Projects
      # DittoQueries module for projects/dittoqueries endpoints
      module DittoQueries
        # Get all ditto queries in a project
        #
        # @param project_id [Integer] Id of project
        # @return [Hash] All ditto queries in project
        def ditto_queries(project_id)
          get "projects/#{project_id}/dittoqueries"
        end

        # Get a specific ditto query in a project
        #
        # @param project_id [Integer] Id of project
        # @param ditto_query_id [Integer] Id of ditto query
        # @return [Hash] Specific ditto query
        def get_ditto_query(project_id, ditto_query_id)
          get "projects/#{project_id}/dittoqueries/#{ditto_query_id}"
        end

        # Create a ditto query in a project
        #
        # @param project_id [Integer] Id of project
        # @param opts [Hash] options hash of parameters
        # @option opts [Integer] id Id of the query
        # @option opts [String] name Name of the query
        # @options opts [Integer] dittoBrandId The ditto brand id
        # @options opts [Boolean] enabled Status of the query
        # @return [Hash] New ditto query
        def create_ditto_query(project_id, opts = {})
          post "projects/#{project_id}/dittoqueries", opts
        end

        # Update an existing ditto query in a project
        #
        # @param project_id [Integer] Id of project
        # @param ditto_query_id [Integer] Id of query
        # @param opts [Hash] options hash of parameters
        # @option opts [Integer] id Id of the query
        # @option opts [String] name Name of the query
        # @options opts [Integer] dittoBrandId The ditto brand id
        # @options opts [Boolean] enabled Status of the query
        # @return [Hash] Updated ditto query
        def update_ditto_query(project_id, ditto_query_id, opts = {})
          put "projects/#{project_id}/dittoqueries/#{ditto_query_id}", opts
        end

        # Delete an existing ditto query in a project
        #
        # @param project_id [Integer] Id of project
        # @param ditto_query_id [Integer] Id of ditto query
        # @return [Hash] Deleted ditto query
        def delete_ditto_query(project_id, ditto_query_id)
          delete "projects/#{project_id}/dittoqueries/#{ditto_query_id}"
        end
      end
    end
  end
end
