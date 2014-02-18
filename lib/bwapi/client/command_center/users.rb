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

        # Update an existing user access level
        #
        # @param [Integer] user_id the user id
        # @param [Integer] access_level the user id
        # @return [Hashie::Mash] Updated user access level
        def update_user_access_level user_id, access_level
          put "commandcenter/users/#{user_id}/access/#{access_level}"
        end

        # Delete an existing user access level
        #
        # @param [Integer] user_id the user id
        # @return [Hashie::Mash] Deleted user access level
        def delete_user_access_level user_id
          delete "commandcenter/users/#{user_id}"
        end

    end
  end
end