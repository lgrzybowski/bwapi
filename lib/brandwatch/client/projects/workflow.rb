module Brandwatch
  class Client
    module Projects
      module Worflow

        # Get all workflow categories for project
        #
        # @param id [Integer] Id of project
        # @return [Hashie::Mash] Workflow categories for project
        def project_users id
          get "projects/#{id}/workflow"
        end

      end
    end
  end
end