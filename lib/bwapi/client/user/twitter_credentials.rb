module BWAPI
  class Client
    module User
      # TwitterCredentials module for user/twittercredentials endpoints
      module TwitterCredentials
        # Retrieve the current user's Twitter credentials
        #
        # TODO: Add parameters documentation
        def twitter_credentials
          get '/user/twittercredentials'
        end

        # Update the current user's Twitter credentials
        #
        # TODO: Add parameters documentation
        def update_twitter_credentials
          put '/user/twittercredentials'
        end

        # Delete the current user's Twitter credentials
        #
        # TODO: Add parameters documentation
        def delete_twitter_credentials
          delete '/user/twittercredentials'
        end
      end
    end
  end
end
