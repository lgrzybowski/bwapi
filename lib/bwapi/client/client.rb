module BWAPI
  class Client
    module Client

      # Get the current users client
      #
      # @return [Hashie::Mash] Client information
      def client
        get "client"
      end

      # Get the current users client modules
      #
      # @return [Hashie::Mash] Client module information
      def client_modules
        get "client/modules"
      end
      alias :modules :client_modules

    end
  end
end