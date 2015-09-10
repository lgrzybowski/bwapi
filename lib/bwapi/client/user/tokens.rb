module BWAPI
  class Client
    module User
      # Tokens module for user/tokens endpoints
      module Tokens
        # Get all active API access tokens owned by the current user
        #
        # TODO: Add parameters documentation
        def user_tokens(opts = {})
          get '/user/tokens', opts
        end

        # Remove a token
        #
        # TODO: Add parameters documentation
        def delete_user_token(access_token)
          delete "/user/tokens/#{access_token}"
        end
      end
    end
  end
end
