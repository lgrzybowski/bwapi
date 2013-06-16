module Brandwatch
  class Client
    module Projects
      module Sharing

        # Default shares of a project
        #
        # @return [Hashie::Mash] Project summary information
        def projects_summary
          get "projects/summary"
        end
        alias :summary :projects_summary

      end
    end
  end
end