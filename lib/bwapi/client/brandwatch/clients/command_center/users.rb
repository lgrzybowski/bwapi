require 'bwapi/client/brandwatch/clients/command_center/users/access'

module BWAPI
  class Client
    module Brandwatch
      module Clients
        module CommandCenter
          # Users module for brandwatch/client/{client_id}/commandcenter/users endpoints
          module Users
            # Fetch Vizia access levels for all users in client
            #
            # TODO: Add parameters documentation
            def brandwatch_users_access_levels(client_id)
              get "brandwatch/clients/#{client_id}/commandcenter/users"
            end

            # Fetch a single user's Vizia access level
            #
            # TODO: Add parameters documentation
            def brandwatch_user_access_level(client_id, user_id)
              get "brandwatch/clients/#{client_id}/commandcenter/users/#{user_id}"
            end

            include BWAPI::Client::Brandwatch::Clients::CommandCenter::Users::Access
          end
        end
      end
    end
  end
end
