module BWAPI
  class Client
    module Projects
      module Workflow

        # Get all workflow categories for project
        #
        # @param id [Integer] Id of project
        # @return [Hashie::Mash] Workflow categories for project
        def workflow id
          get "projects/#{id}/workflow"
        end

      end
    end
  end
end