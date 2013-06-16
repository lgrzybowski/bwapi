module BWAPI
  class Client
    module Brandwatch
      module Become

        # Become user
        #
        # @note must be a super admin user
        #
        # @param id [Integer] The user id
        # @return [Hashie::Mash] User credentials
        def brandwatch_become id
          get "brandwatch/become/#{id}"
        end

      end
    end
  end
end