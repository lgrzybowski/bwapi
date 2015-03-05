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
            def brandwatch_client_themes(client_id)
              get "brandwatch/clients/#{client_id}/commandcenter/themes"
            end

            # Add Vizia themes to a client
            #
            # TODO: Add parameters documentation
            def brandwatch_client_create_themes(client_id, theme_id)
              post "brandwatch/clients/#{client_id}/commandcenter/themes/#{theme_id}"
            end

            # Remove Vizia themes from a client
            #
            # TODO: Add parameters documentation
            def brandwatch_client_delete_themes(client_id, theme_id)
              delete "brandwatch/clients/#{client_id}/commandcenter/themes/#{theme_id}"
            end
          end
        end
      end
    end
  end
end
