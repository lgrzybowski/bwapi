module BWAPI
  class Client
    # Languages module for languages endpoints
    module Languages
      # Get the current language list
      #
      # @return [Hash] Languages information
      def languages
        get 'languages'
      end
    end
  end
end
