module BWAPI
  class Client
    module Admin
      # Demographics module for admin/demographics endpoints
      module Demographics
        # Get the classification of an author by author description
        #
        # @param opts [Hash] options hash of parameters
        # @option opts [String] description of the author
        # @return [Hash] Classification of an author
        def classify_author(opts = {})
          get 'admin/demographics/classify', opts
        end
      end
    end
  end
end
