module BWAPI
  class Client
    # Client module for client endpoints
    module Client
      # Get the current users client
      #
      # @return [Hash] Client information
      def client
        get 'client'
      end

      # Get the current users client modules
      #
      # @return [Hash] Client module information
      def client_modules
        get 'client/modules'
      end
    end
  end
end
