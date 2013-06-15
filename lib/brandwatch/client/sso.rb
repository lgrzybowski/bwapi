module Brandwatch
  class Client
    module SSO

      # Authorize another user for access
      #
      # @param user_id [Integer] The user id
      # @return [Hashie::Mash] User authorization
      def sso id
        get "sso/#{id}"
      end

    end
  end
end