require 'bwapi/client/admin/sharing'

module BWAPI
  class Client
    module Admin
      module Clients
        module Users

          # Get all users for client
          #
          # @param id [Integer] Id of the client
          # @param opts [Hash] options hash of parameters
          # @option opts [Integer] page Page of projects to retrieve
          # @option opts [Integer] pageSize Results per page of results
          # @return [Hashie::Mash] All client users
          def client_users id, opts={}
            get "admin/clients/#{id}/users", opts
          end

          # Get a specific user in client
          #
          # @param client_id [Integer] Id of the client
          # @param user_id [Integer] Id of the user
          # @return [Hashie::Mash] Specific client user
          def get_client_user client_id, user_id
            get "admin/clients/#{client_id}/users/#{user_id}"
          end
          alias :get_user :get_client_user


          # Create a new client user
          #
          # @param id [Integer] Id of the client
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
          # @return [Hashie::Mash] New user
          def create_client_user id, opts
            post "admin/clients/#{id}/users", opts
          end
          alias :create_user :create_client_user

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
          # @return [Hashie::Mash] New user
          def update_client_user client_id, user_id, opts
            put "admin/clients/#{client_id}/users/#{user_id}", opts
          end
          alias :update_user :update_client_user


          def users_sharing id
          end

          def update_users_sharing id
          end

        end

        include BWAPI::Client::Admin::Sharing

      end
    end
  end
end