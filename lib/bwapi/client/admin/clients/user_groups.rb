module BWAPI
  class Client
    module Admin
      module Clients
        # UserGroups module for admin/usergroups endpoints
        module UserGroups
          # Get all user groups
          #
          # @param client_id [Integer] Id of the client
          # @option opts [Integer] page Page of projects to retrieve
          # @option opts [Integer] pageSize Results per page of results
          # @return [Hash] All client user groups
          def client_user_groups(client_id, opts = {})
            get "admin/clients/#{client_id}/usergroups", opts
          end

          # Create new user group
          #
          # @param client_id [Integer] Id of the client
          # @param opts [Hash] options hash of parameters
          # @option opts [Date] startDate Start date of the client
          # @return [Hash] New client user group
          def create_client_user_group(client_id, opts = {})
            post "admin/clients/#{client_id}/usergroups", opts
          end

          # Update existing user group
          #
          # @param client_id [Integer] Id of the client
          # @param user_group_id [Integer] Id of the user group
          # @return [Hash] Updated client user group
          def update_client_user_group(client_id, user_group_id, opts = {})
            put "admin/clients/#{client_id}/usergroups/#{user_group_id}", opts
          end

          # Delete specific user group
          #
          # @param client_id [Integer] Id of the client
          # @param user_group_id [Integer] Id of the user group
          # @return [Hash] Deleted client user group
          def delete_client_user_group(client_id, user_group_id)
            delete "admin/clients/#{client_id}/usergroups/#{user_group_id}"
          end
        end
      end
    end
  end
end
