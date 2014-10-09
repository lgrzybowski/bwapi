module BWAPI
  class Client
    module Admin
      module Clients
        module Users
          # Sharing module for admin/users/sharing endpoints
          module Sharing
            # Get a list of project shares for user
            #
            # @param client_id [Integer] Id of the client
            # @param user_id [Integer] Id of the user
            # @return [Hash] All shares for client user
            def client_users_sharing(client_id, user_id)
              get "admin/client/#{client_id}/users/#{user_id}/sharing"
            end

            # Update a list of project shares for user
            #
            # @param client_id [Integer] Id of the client
            # @param user_id [Integer] Id of the user
            # @param opts [Hash] options Hash of parameters
            # @option opts [Array] ProjectShareDTO The shares of the user
            # @return [Hash] Updated shares for client user
            def update_client_users_sharing(client_id, user_id, opts)
              get "admin/client/#{client_id}/users/#{user_id}/sharing", opts
            end
          end
        end
      end
    end
  end
end
