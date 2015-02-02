module BWAPI
  class Client
    module Brandwatch
      module Clients
        module CommandCenter
          module Users
            # Access module for brandwatch/client/{client_id}/commandcenter/users/{user_id}/access endpoints
            module Access
              # Update a user's Vizia access level
              #
              # TODO: Add parameters documentation
              def brandwatch_update_user_access_level(client_id, user_id, access_level)
                put "brandwatch/client/#{client_id}/commandcenter/users/#{user_id}/access/#{access_level}"
              end

              # Revoke a user's Vizia access
              #
              # TODO: Add parameters documentation
              def brandwatch_delete_user_access_level(client_id, user_id, access_level)
                delete "brandwatch/client/#{client_id}/commandcenter/users/#{user_id}/access/#{access_level}"
              end
            end
          end
        end
      end
    end
  end
end
