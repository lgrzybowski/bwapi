require 'bwapi/client/admin/users/sharing'

module BWAPI
  class Client
    module Admin
      module Clients
        # Users module for admin/users endpoints
        module Users
          # Get all users for client
          #
          # @param client_id [Integer] Id of the client
          # @param opts [Hash] options hash of parameters
          # @option opts [Integer] page Page of projects to retrieve
          # @option opts [Integer] pageSize Results per page of results
          # @return [Hash] All client users
          def client_users(client_id, opts = {})
            get "admin/clients/#{client_id}/users", opts
          end

          # Get a specific user in client
          #
          # @param client_id [Integer] Id of the client
          # @param user_id [Integer] Id of the user
          # @return [Hash] Specific client user
          def get_client_user(client_id, user_id)
            get "admin/clients/#{client_id}/users/#{user_id}"
          end

          # Create a new client user
          #
          # @param client_id [Integer] Id of the client
          # @param opts [Hash] options Hash of parameters
          # @option opts [Integer] id Id of the user
          # @option opts [Hash] tags The users assigned tags
          # @option opts [String] passwordConfirmation The confirmed password
          # @option opts [Boolean] enabled The status of the user
          # @option opts [String] lastName The last name of the user
          # @option opts [String] phone The users phone number
          # @option opts [String] department The users department
          # @option opts [String] job The users job
          # @option opts [String] messenger The users IM details
          # @option opts [String] password The password of the user
          # @option opts [Integer] clientId The users client id
          # @option opts [String] username The users username
          # @option opts [String] address The users address
          # @option opts [String] uiRole The users ui role
          # @option opts [Array] apiRole The users api role
          # @option opts [String] firstName The users first name
          # @option opts [String] mobile The users mobile number
          # @option opts [Date] creationDate Date the user was created on
          # @return [Hash] New user
          def create_client_user(client_id, opts = {})
            post "admin/clients/#{client_id}/users", opts
          end

          # Update an existing client user
          #
          # @param client_id [Integer] Id of the client
          # @param user_id [Integer] Id of the user
          # @param opts [Hash] options Hash of parameters
          # @option opts [Integer] id Id of the user
          # @option opts [Hash] tags The users assigned tags
          # @option opts [String] passwordConfirmation The confirmed password
          # @option opts [Boolean] enabled The status of the user
          # @option opts [String] lastName The last name of the user
          # @option opts [String] phone The users phone number
          # @option opts [String] department The users department
          # @option opts [String] job The users job
          # @option opts [String] messenger The users IM details
          # @option opts [String] password The password of the user
          # @option opts [Integer] clientId The users client id
          # @option opts [String] username The users username
          # @option opts [String] address The users address
          # @option opts [String] uiRole The users ui role
          # @option opts [Array] apiRole The users api role
          # @option opts [String] firstName The users first name
          # @option opts [String] mobile The users mobile number
          # @option opts [Date] creationDate Date the user was created on
          # @return [Hash] New user
          def update_client_user(client_id, user_id, opts = {})
            put "admin/clients/#{client_id}/users/#{user_id}", opts
          end

          include BWAPI::Client::Admin::Clients::Users::Sharing
        end
      end
    end
  end
end
