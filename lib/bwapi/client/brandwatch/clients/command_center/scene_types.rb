module BWAPI
  class Client
    module Brandwatch
      module Clients
        module CommandCenter
          # SceneTypes module for brandwatch/clients/{client_id}/commandcenter/scenetypes endpoints
          module SceneTypes
            # Fetch all scene types enabled for given client
            #
            # TODO: Add parameters documentation
            def brandwatch_scene_types(client_id)
              get "/brandwatch/clients/#{client_id}/commandcenter/scenetypes"
            end

            # Alter Vizia scene types enabled for client
            #
            # TODO: Add parameters documentation
            def brandwatch_update_scene_type(client_id, opts = {})
              put "/brandwatch/clients/#{client_id}/commandcenter/scenetypes", opts
            end
          end
        end
      end
    end
  end
end
