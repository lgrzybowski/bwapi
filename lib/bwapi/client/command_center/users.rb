require 'bwapi/client/command_center/users/access'

module BWAPI
  class Client
    module CommandCenter
      # Users module for commandcenter/users endpoints
      module Users

        # Get the access levels for all users
        #
        # @return [Hashie::Mash] All users access levels
        def users_access_levels
          get "commandcenter/users"
        end

        # Get an existing user access level
        #
        # @param [Integer] user_id the user id
        # @return [Hashie::Mash] Specific user access level
        def get_user_access_level user_id
          get "commandcenter/users/#{user_id}"
        end

        # Delete an existing user access level
        #
        # @param [Integer] user_id the user id
        # @return [Hashie::Mash] Deleted user access level
        def delete_user_access_level user_id
          delete "commandcenter/users/#{user_id}"
        end

        include BWAPI::Client::CommandCenter::Users::Access

      end
    end
  end
end