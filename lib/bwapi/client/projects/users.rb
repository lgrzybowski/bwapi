# encoding: utf-8

module BWAPI
  class Client
    module Projects
      # Users module for projects/users endpoint
      module Users
        # Get all users shared with project
        #
        # @param project_id [Integer] Id of project
        # @return [Hashie::Mash] All users shared to project
        def project_users(project_id)
          get "projects/#{project_id}/users"
        end
      end
    end
  end
end
