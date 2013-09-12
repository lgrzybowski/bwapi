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
          grant_type: 'password',
          client_secret: client_secret,
          client_id: client_id,
          force_urlencoded: true
        }.merge opts

        oauth_request opts
      end
      alias :login :oauth_token

      # Refresh a authenticated users oauth_token
      #
      # @param opts [Hash] options hash of parameters
      # @option opts [String] username User name of user
      # @option opts [String] password User name of user
      # @option opts [String] grant_type Grant type of user
      # @option opts [String] client_id Client id
      # @option opts [String] force_urlencoded Force urlencoded
      def oauth_refresh_token opts={}, refresh_token = nil
        opts = {
          username: username,
          password: password,
          refresh_token: refresh_token,
          grant_type: 'refresh_token',
          client_id: client_id,
          force_urlencoded: true
        }.merge opts

        oauth_request opts
      end
      alias :refresh :oauth_refresh_token

      # Sends a oauth request
      #
      # @param opts [Hash] options hash of parameters
      def oauth_request opts
        begin
          creds = post 'oauth/token', opts
        rescue BWAPI::BWError
          false
        else
          self.access_token = creds.access_token
          self.expires_in = creds.expires_in

          if application_client?
            self.refresh_token = creds.refresh_token
          end

          true
        end
      end

    end
  end
end