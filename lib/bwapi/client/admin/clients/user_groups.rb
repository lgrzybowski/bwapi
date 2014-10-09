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
          def client_user_groups(client_id)
            get "admin/clients/#{client_id}/usergroups"
          end

          # Create new user group
          #
          # @param client_id [Integer] Id of the client
          # @param opts [Hash] options hash of parameters
          # @option opts [Date] startDate Start date of the client
          def create_client_user_group(client_id, opts = {})
            post "admin/clients/#{client_id}/usergroups", opts
          end

          # Update existing user groups
          #
          # @param client_id [Integer] Id of the client
          # @param user_group_id [Integer] Id of the user group
          def update_client_user_group(client_id, user_group_id, opts = {})
            put "admin/clients/#{client_id}/usergroups/#{user_group_id}", opts
          end

          # Delete specific user groups of client
          #
          # @param client_id [Integer] Id of the client
          # @param user_group_id [Integer] Id of the user group
          def delete_client_user_group(client_id, user_group_id)
            delete "admin/clients/#{client_id}/usergroups/#{user_group_id}"
          end
        end
      end
    end
  end
end
