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
      def sso id
        get "sso/#{id}"
      end

    end
  end
end