module BWAPI
  class Client
    module Client
      # GrantTypes module for client/grantTypes endpoints
      module GrantTypes
        # Retrieve current User's Client's grant type specified.
        #
        # TODO: Add parameters documentation
        def client_grant_type(grant_type)
          get "/client/grantTypes/#{grant_type}"
        end
      end
    end
  end
end
