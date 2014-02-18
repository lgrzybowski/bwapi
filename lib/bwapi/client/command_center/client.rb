module BWAPI
  class Client
    module CommandCenter
      # Themes module for commandcenter/themes endpoints
      module Client

        # Get client information
        #
        # @return [Hashie::Mash] All themes
        def client
          get "commandcenter/client"
        end

    end
  end
end