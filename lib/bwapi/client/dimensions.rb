module BWAPI
  class Client
    # Dimemsions module for dimensions endpoint
    module Dimensions
      # Get the currently supported dimensions
      #
      # @return [array] Current dimensions
      def dimensions
        get 'dimensions'
      end
    end
  end
end
