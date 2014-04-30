module BWAPI
  class Client
    module CommandCenter
      module Displays
        module Users
          # Displays module for commandcenter/displays/users/access endpoints
          module Access
            # Grant a display user access level
            #
            # @param [Integer] display_id the display id
            # @param [Integer] user_id the user id
            # @param [Integer] access_level the access level
            # @return [Hashie::Mash] Updated user access level
            def grant_display_user_access_level(display_id, user_id, access_level)
              post "commandcenter/displays/#{display_id}/users/#{user_id}/access/#{access_level}"
            end

            # Update an existing display user access level
            #
            # @param [Integer] display_id the display id
            # @param [Integer] user_id the user id
            # @param [Integer] access_level the access level
            # @return [Hashie::Mash] Updated user access level
            def update_display_user_access_level(display_id, user_id, access_level)
              put "commandcenter/displays/#{display_id}/users/#{user_id}/access/#{access_level}"
            end
          end
        end
      end
    end
  end
end
