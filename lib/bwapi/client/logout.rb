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
          @access_token = nil
        end
      end

    end
  end
end