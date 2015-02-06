module BWAPI
  class Client
    module User
      # InstagramCredentials module for user/instagramcredentials endpoints
      module InstagramCredentials
        # Get current user Instagram credentials
        #
        # @return [Hash] Current user Instagram credentials
        def instagram_credentials
          get '/user/instagramcredentials'
        end

        # Delete current user Instagram credentials
        #
        # @return [Hash] Current users deleted Instagram credentials
        def delete_instagram_credentials
          delete '/user/instagramcredentials'
        end

        # Store the current user's Instagram credentials
        #
        # @param opts [Hash] options Hash of parameters
        # @option opts [String] accessToken Instagram API access token
        # @option opts [String] clientId Instagram API client id
        # @return [Hash] Current user Instagram credentials
        def update_instagram_credentials(opts = {})
          put '/user/instagramcredentials', opts
        end
      end
    end
  end
end
