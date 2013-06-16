module BWAPI
  class Client
    module Admin
      module Clients
        module Users
          module Sharing

            # Get a list of project shares for user
            #
            # @param client_id [Integer] Id of the client
            # @param user_id [Integer] Id of the user
            # @return [Hashie::Mash] All shares for client user
            def client_users_sharing client_id, user_id
              get "admin/client/#{client_id}/users/#{user_id}/sharing"
            end
            alias :users_sharing :client_users_sharing

            # Update a list of project shares for user
            #
            # @param client_id [Integer] Id of the client
            # @param user_id [Integer] Id of the user
            # @param opts [Hash] options Hash of parameters
            # @option opts [Array] ProjectShareDTO The shares of the user
            # @return [Hashie::Mash] Updated shares for client user
            def update_client_users_sharing client_id, user_id, opts
              get "admin/client/#{client_id}/users/#{user_id}/sharing", opts
            end
            alias :update_users_sharing :update_client_users_sharing

          end
        end
      end
    end
  end
end