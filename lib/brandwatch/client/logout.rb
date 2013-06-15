module Brandwatch
  class Client
    module Logout

      def oauth_token_destroy
        get "logout"
        @access_token = nil
      end
      alias :logout :oauth_token_destroy

    end
  end
end