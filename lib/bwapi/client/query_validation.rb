module BWAPI
  class Client
    # QueryValidation module for queryValidation endpoints
    module QueryValidation
      # Check to see if a query string is valid
      #
      # @param opts [Hash] options hash of parameters
      # @option opts [String] query Query string
      # @option opts [Array] language Languages for query string
      # @return [Hash] Query string validation results
      def query_validation(opts = {})
        get 'query-validation', opts
      end

      # Check to see if a search within query string is valid
      #
      # @param opts [Hash] options hash of parameters
      # @option opts [String] query Query string
      # @option opts [Array] language Languages for query string
      # @return [Hash] Query string validation results
      def search_within(opts = {})
        get 'query-validation/searchwithin', opts
      end
    end
  end
end
