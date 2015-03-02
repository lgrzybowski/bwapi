module BWAPI
  class Client
    module Brandwatch
      module Clients
        module CommandCenter
          # Limits module for brandwatch/clients/{client_id}/commandcenter/limits endpoints
          module Limits
            # Fetch configured limits for a Vizia client
            #
            # TODO: Add parameters documentation
            def brandwatch_vizia_limits(client_id)
              get "/brandwatch/clients/#{client_id}/commandcenter/limits"
            end

            # Create limits for a Vizia client
            #
            # TODO: Add parameters documentation
            def brandwatch_create_vizia_limits(client_id, opts = {})
              post "/brandwatch/clients/#{client_id}/commandcenter/limits", opts
            end

            # Update limits for a Vizia client
            #
            # TODO: Add parameters documentation
            def brandwatch_update_vizia_limits(client_id, opts = {})
              put "/brandwatch/clients/#{client_id}/commandcenter/limits", opts
            end
          end
        end
      end
    end
  end
end
