module BWAPI
  class Client
    module Brandwatch
      module Clients
        # Clientmodules module for brandwatch/clients/{client_id}/modules endpoints
        module Modules
          # Get a specific clients modules
          #
          # @param client_id [Integer] Id of the client
          # @return [Hash] Specific clients modules
          def brandwatch_client_modules(client_id)
            get "brandwatch/clients/#{client_id}/modules"
          end

          # Update brandwatch client modules
          #
          # @param client_id [Integer] Id of the client
          # @param opts [Hash] options Hash of parameters
          # @param opts [Integer] client_id Id of the client
          # @option opts [Array] modules Client Modules to update
          # @return [Hash] Updated client modules
          def update_brandwatch_client_modules(client_id, opts = {})
            put "brandwatch/clients/#{client_id}/modules", opts
          end
        end
      end
    end
  end
end
