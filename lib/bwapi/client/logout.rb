module BWAPI
  class Client
    module Logout

      # Logout user
      #
      # @return [Hashie::Mash] Logout information
      def logout
        begin
          get "logout"
        ensure
          self.username       = nil
          self.password       = nil
          self.access_token   = nil
          self.client_id      = nil
          self.access_token   = nil
          self.refresh_token  = nil
          self.expires_in     = nil
        end
      end

    end
  end
end