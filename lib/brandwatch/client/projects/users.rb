module Brandwatch
  class Client
    module Projects
      module Users

        # Get all users shared with project
        #
        # @param id [Integer] Id of project
        # @return [Hashie::Mash] All users shared to project
        def project_users id
          get "projects/#{id}/users"
        end

      end
    end
  end
end