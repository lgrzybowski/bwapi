module BWAPI
  class Client
    module ErrorCodes

      # Get the api error codes
      #
      # @return [Hashie::Mash] Error codes information
      def error_codes
        get "errorCodes"
      end

    end
  end
end