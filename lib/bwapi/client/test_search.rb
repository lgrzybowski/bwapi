module BWAPI
  class Client
    # TestSearch module for testSearch endpoint
    module TestSearch
      # Retrieve full text for a given url
      # @param opts [Hash] options hash of parameters
      # @option opts [String] url the url to test search
      # @return [Hashie::Mash] full text of the url
      def test_search_content(opts = {})
        get 'testsearch/content', opts
      end
    end
  end
end
