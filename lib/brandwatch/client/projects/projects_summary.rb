module Brandwatch
  class Client
    module Projects
      module Summary

        # Summary of projects
        #
        # @param opts [Hash] options hash of parameters
        # @option opts [Integer] :page Page of projects to retrieve
        # @option opts [Integer] :pageSize Results per page of results
        # @option opts [String] :filter Filter to apply to the query
        # @return [Hashie::Mash] Project summary information
        def projects_summary opts={}
          get "projects/summary"
        end
        alias :summary :projects_summary

      end
    end
  end
end