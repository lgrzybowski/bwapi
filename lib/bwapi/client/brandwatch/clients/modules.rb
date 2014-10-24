module BWAPI
  class Client
    module Brandwatch
      # Clientmodules module for brandwatch/client/modules endpoints
      module Clients
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
          # @param opts [Hash] options Hash of parameters
          # @option opts [Array] brandwatch/client/modules Client Modules to edit
          # @return [Hash] Updated client modules
          def update_brandwatch_client_modules(opts = {})
            put "brandwatch/clients/#{client_id}/modules", opts
          end
        end
      end
    end
  end
end
