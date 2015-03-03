module BWAPI
  class Client
    module User
      # Facebook module for user/facebook endpoints
      module Facebook
        # Check status of Facebook queries
        #
        # TODO: Add parameters documentation
        def facebook_issues
          get '/user/facebook/issues'
        end
      end
    end
  end
end
