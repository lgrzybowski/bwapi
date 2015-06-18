module BWAPI
  class Client
    module Admin
      # Client module for admin/client endpoints
      module Client
        # Retrieve a breakdown of the given client's usage by query
        #
        # TODO: Add parameters documentation
        def usage_by_query(client_id, opts = {})
          get "admin/client/#{client_id}/usagebyquery", opts
        end
      end
    end
  end
end
