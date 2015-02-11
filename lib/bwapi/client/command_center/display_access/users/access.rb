module BWAPI
  class Client
    module CommandCenter
      module DisplayAccess
        module Users
          # Access module for commandcenter/displayaccess/users/{user_id}/access endpoints
          module Access
            # Alter specific user's access to multiple specified displays
            #
            # @param [Integer] user_id the user id
            # @param [Integer] access_level the access level
            # TODO: Add parameters documentation
            def update_displays_user_access_level(user_id, access_level, opts = {})
              put "commandcenter/displayaccess/users/#{user_id}/access/#{access_level}", opts
            end
          end
        end
      end
    end
  end
end
