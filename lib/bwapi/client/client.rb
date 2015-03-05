require 'bwapi/client/client/grant_types'

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

      # Given a project id, retrieves the price structure associated with the client the project belongs to
      #
      # TODO: Add parameters documentation
      def client_pricing(opts = {})
        get '/client/pricing', opts
      end

      # Fetch usage report
      #
      # TODO: Add parameters documentation
      def client_usage
        get '/client/usage'
      end

      include BWAPI::Client::Client::GrantTypes
    end
  end
end
