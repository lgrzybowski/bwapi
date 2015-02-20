module BWAPI
  class Client
    module CommandCenter
      # QueryColours module for commandcenter/queryColours endpoints
      module QueryColours
        # Get colours defined for queries in current client
        #
        # TODO: Add parameters documentation
        def query_colours
          get 'commandcenter/queryColours'
        end

        # Define the colour for a query
        #
        # TODO: Add parameters documentation
        def create_query_colour(opts = {})
          post 'commandcenter/queryColours', opts
        end

        # Get colours defined for queries in current client
        #
        # TODO: Add parameters documentation
        def update_query_colour(query_id, opts = {})
          put "/commandcenter/queryColours/#{query_id}", opts
        end

        # Get colours defined for queries in current client
        #
        # TODO: Add parameters documentation
        def delete_query_colour(query_id)
          delete "/commandcenter/queryColours/#{query_id}"
        end
      end
    end
  end
end
