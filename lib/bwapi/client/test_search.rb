module Brandwatch
  class Client
    module TestSearch

      # Retrieve full text for a given url
      def test_search_content opts
        get "testsearch/content", opts
      end
      alias :test_search :test_search_content

    end
  end
end