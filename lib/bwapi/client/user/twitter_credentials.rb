module BWAPI
  class Client
    module User
      # TwitterCredentials module for user/twittercredentials endpoints
      module TwitterCredentials
        # Retrieve the current user's Twitter credentials
        #
        # @return [Hash] Current users Twitter credentials
        def twitter_credentials
          get '/user/twittercredentials'
        end

        # Update the current user's Twitter credentials
        #
        # @param opts [Hash] options Hash of parameters
        # @option opts [string] 'consumerKey' Twitter Consumer Key,
        # @option opts [string] 'accessToken' Twitter Access Token,
        # @option opts [string] 'accessTokenSecret' Twitter TokenSecret
        # @return [Hash] Current user Twitter User credentials
        def update_twitter_credentials(opts = {})
          put '/user/twittercredentials', opts
        end

        # Delete the current user's Twitter credentials
        #
        # @return [Hash] Current users deleted Twitter credentials
        def delete_twitter_credentials
          delete '/user/twittercredentials'
        end
      end
    end
  end
end
