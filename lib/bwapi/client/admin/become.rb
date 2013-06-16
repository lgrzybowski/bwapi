module BWAPI
  class Client
    module Admin
      module Clients
        module Become

          # Become user
          #
          # @note must be a client admin user
          #
          # @param id [Integer] The user id
          # @return [Hashie::Mash] User credentials
          def admin_become id
            get "admin/become/#{id}"
          end

        end
      end
    end
  end
end