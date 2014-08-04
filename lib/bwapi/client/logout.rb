module BWAPI
  class Client
    # Logout module for logout endpoint
    module Logout
      # Logout user
      #
      # @return [Hashie::Mash] Logout information
      def logout
        get 'logout'
      ensure
        self.access_token   = nil
        self.refresh_token  = nil
      end
    end
  end
end
