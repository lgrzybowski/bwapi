module BWAPI
  class Client
    module Projects
      # DittoQueries module for projects/dittoqueries endpoints
      module DittoQueries
        # Create a ditto query in a project
        #
        # @param project_id [Integer] Id of project
        # @param opts [Hash] options hash of parameters
        # @option opts [Integer] id Id of the query
        # @option opts [String] name Name of the query
        # @options opts [Integer] dittoBrandId The ditto brand id
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
        # @return [Hash] Updated ditto query
        def update_ditto_query(project_id, ditto_query_id, opts = {})
          put "projects/#{project_id}/dittoqueries/#{ditto_query_id}", opts
        end
      end
    end
  end
end
