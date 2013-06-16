module BWAPI
  class Client
    module Me

      # Get user information
      #
      # @return [Hashie::Mash] User information
      def me
        get 'me'
      end

      # Get users client name
      #
      # @return [String] Users client name
      def client_name
        me.client.name
      end

      # Get users client id
      #
      # @return [String] Users client id
      def client_id
        me.client.id
      end

      # Get users client id
      #
      # @return [String] Users client id
      def client_id
        me.client.id
      end

      # Get users id
      #
      # @return [String] Users role
      def user_id
        me.id
      end

    end
  end
end