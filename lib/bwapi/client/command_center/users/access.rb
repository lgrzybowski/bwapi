module BWAPI
  class Client
    module CommandCenter
      # Users module for commandcenter/users/access endpoints
      module Users
        module Access

          # Update an existing user access level
          #
          # @param [Integer] user_id the user id
          # @param [Integer] access_level the access level
          # @return [Hashie::Mash] Updated user access level
          def update_user_access_level user_id, access_level
            put "commandcenter/users/#{user_id}/access/#{access_level}"
          end

        end
      end
    end
  end
end