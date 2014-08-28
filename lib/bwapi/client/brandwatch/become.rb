module BWAPI
  class Client
    module Brandwatch
      # Become module for brandwatch/become endpoint
      module Become
        # Become user
        #
        # @note must be a super admin user
        #
        # @param user_id [Integer] The user id
        # @return [Hash] User credentials
        def brandwatch_become(user_id)
          get "brandwatch/become/#{user_id}"
        end
      end
    end
  end
end
