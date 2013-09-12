module BWAPI
  class Client
    module Brandwatch
      # ClientModules module for brandwatch/clientModules endpoints
      module ClientModules

        # Get a specific clients modules
        #
        # @param id [Integer] Id of the client
        # @return [Hashie::Mash] Specific clients modules
        def brandwatch_client_modules id
          get "brandwatch/clientModules/#{id}"
        end

        # Update brandwatch client modules
        #
        # @param opts [Hash] options Hash of parameters
        # @option opts [Array] ClientModules Client Modules to edit
        # @return [Hashie::Mash] Update client modules
        def update_brandwatch_client_module opts
          put "brandwatch/clientModules", opts
        end

      end
    end
  end
end