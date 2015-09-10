module BWAPI
  class Client
    module Brandwatch
      module Clients
        # GrantTypes module for brandwatch/clients/{client_id}/granttypes endpoints
        module GrantTypes
          # Retrieve grant type specified for given client, if a configured oAuth grant type constraint exists.
          #
          # TODO: Add parameters documentation
          def get_grant_type(client_id, grant_type)
            get "brandwatch/clients/#{client_id}/grantTypes/#{grant_type}"
          end

          # Create a new ClientGrantType constraint
          #
          # TODO: Add parameters documentation
          def create_grant_type(opts = {})
            post 'brandwatch/clients/grantTypes', opts
          end

          # Update an existing ClientGrantType constraint
          #
          # TODO: Add parameters documentation
          def update_grant_type(opts = {})
            put 'brandwatch/clients/grantTypes', opts
          end

          # Delete an existing ClientGrantType constraint
          #
          # TODO: Add parameters documentation
          def delete_grant_type(opts = {})
            delete 'brandwatch/clients/grantTypes', opts
          end
        end
      end
    end
  end
end
