require 'bwapi/client/command_center/displays/users/access'

module BWAPI
  class Client
    module CommandCenter
      module Displays
        # Users module for commandcenter/displays/users endpoints
        module Users
          # Get all users display access levels
          #
          # @return [Hashie::Mash] Display access levels
          def displays_access_levels
            get 'commandcenter/displays/users'
          end

          # Get a users display access levels for displays
          #
          # @param [Integer] user_id the user id
          # @return [Hashie::Mash] Specific display user access levels
          def get_displays_user_access_levels(user_id)
            get "commandcenter/displays/users/#{user_id}"
          end

          # Get displays access levels for users
          #
          # @param [Integer] display_id the display id
          # @return [Hashie::Mash] Specific display user access levels
          def get_display_users_access_levels(display_id)
            get "commandcenter/displays/#{display_id}/users"
          end

          # Get display access levels for existing user
          #
          # @param [Integer] display_id the display id
          # @param [Integer] user_id the user id
          # @return [Hashie::Mash] Specific display and user access level
          def get_display_user_access_levels(display_id, user_id)
            get "commandcenter/displays/#{display_id}/users/#{user_id}"
          end

          # Revoke display access levels for existing user
          #
          # @param [Integer] display_id the display id
          # @param [Integer] user_id the user id
          # @return [Hashie::Mash] Specific display and user access level
          def delete_display_user_access_levels(display_id, user_id)
            delete "commandcenter/displays/#{display_id}/users/#{user_id}"
          end

          include BWAPI::Client::CommandCenter::Displays::Users::Access
        end
      end
    end
  end
end
