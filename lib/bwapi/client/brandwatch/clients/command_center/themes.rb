module BWAPI
  class Client
    module Brandwatch
      module Clients
        module CommandCenter
          # Themes module for brandwatch/client/{client_id}/commandcenter/themes endpoints
          module Themes
            # Get Vizia themes enabled for client
            #
            # TODO: Add parameters documentation
            def brandwatch_themes(client_id)
              get "brandwatch/client/#{client_id}/commandcenter/themes"
            end

            # Alter Vizia themes enabled for client
            #
            # TODO: Add parameters documentation
            def brandwatch_update_themes(client_id, opts = {})
              get "brandwatch/client/#{client_id}/commandcenter/themes", opts
            end
          end
        end
      end
    end
  end
end
