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
      # @return [Hashie::Mash] User authorization
      def sso user_id
        get "sso/#{user_id}"
      end

    end
  end
end