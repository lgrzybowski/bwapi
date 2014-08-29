module BWAPI
  class Client
    module Projects
      # Workflow module for projects/workflow endpoint
      module Workflow
        # Get all workflow categories for project
        #
        # @param project_id [Integer] Id of project
        # @return [Hash] Workflow categories for project
        def workflow(project_id)
          get "projects/#{project_id}/workflow"
        end
      end
    end
  end
end
