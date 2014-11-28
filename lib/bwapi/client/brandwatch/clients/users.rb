module BWAPI
  class Client
    module Brandwatch
      module Clients
        # Users module for brandwatch/users endpoints
        module Users
          # Create a new client user
          #
          # @param client_id [Integer] Id of the client
          # @param opts [Hash] options Hash of parameters
          # @option opts [String] address The users address
          # @option opts [Array] apiRole The users api role
          # @option opts [String] ccAccess The user Vizia access level
          # @option opts [Integer] clientId The users client id
          # @option opts [Date] creationDate Date the user was created on
          # @option opts [String] department The users department
          # @option opts [Boolean] enabled The status of the user
          # @option opts [String] externalId The Users external Id
          # @option opts [String] firstName The users first name
          # @option opts [Integer] id Id of the user
          # @option opts [String] job The users job
          # @option opts [String] lastName The last name of the user
          # @option opts [String] messenger The users IM details
          # @option opts [String] mobile The users mobile number
          # @option opts [String] oldPassword The old password of the user
          # @option opts [String] password The password of the user
          # @option opts [String] passwordConfirmation The confirmed password
          # @option opts [String] phone The users phone number
          # @option opts [Hash] tags The users assigned tags
          # @option opts [String] uiRole The users ui role
          # @option opts [String] username The users username
          # @return [Hash] New user
          def brandwatch_create_client_user(client_id, opts = {})
            post "brandwatch/clients/#{client_id}/users", opts
          end
        end
      end
    end
  end
end
