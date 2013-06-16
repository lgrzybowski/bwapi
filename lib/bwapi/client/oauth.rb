module BWAPI
  class Client
    module OAuth

      # Authenticate a user
      #
      # @param opts [Hash] options hash of parameters
      # @option opts [String] username User name of user
      # @option opts [String] password User name of user
      # @option opts [String] grant_type Grant type of user
      # @option opts [String] client_secret Client secret
      # @option opts [String] client_id Client id
      # @option opts [String] force_urlencoded Force urlencoded
      def oauth_token opts={}
        opts = {
          username: username,
          password: password,
          grant_type: grant_type,
          client_secret: client_secret,
          client_id: client_id,
          :force_urlencoded => true
        }.merge opts

        credentials  = post 'oauth/token', opts
        @access_token = credentials.access_token
        return
      end
      alias :login :oauth_token

    end
  end
end