module BWAPI
  class Client
    # SSO module for sso endpoint
    module SSO
      # Authorize another user for access
      #
      # @note must have sso oauth_token
      # @see oauth_token
      #
      # @param user_id [Integer] The user id
      # @return [Hash] User authorization
      def sso(user_id)
        get "sso/#{user_id}"
      end

      # Endpoints to manage users using SSO keys
      #
      # TODO: Add parameters documentation
      def sso_user(opts = {})
        get 'sso/user', opts
      end
    end
  end
end
