module Brandwatch
  class Client
    module Filters

      # Get the currently supported filters
      #
      # @return [Hashie::Mash] Current filters
      def filters
        get "filters"
      end

    end
  end
end