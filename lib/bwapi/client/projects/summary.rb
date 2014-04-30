# encoding: utf-8

module BWAPI
  class Client
    module Projects
      # Summary module for projects/summary endpoints
      module Summary
        # Summary of projects
        #
        # @param opts [Hash] options hash of parameters
        # @option opts [Integer] page Page of projects to retrieve
        # @option opts [Integer] pageSize Results per page of results
        # @option opts [String] :filter Filter to apply to the query
        # @return [Hashie::Mash] Project summary information
        def projects_summary(opts = {})
          get 'projects/summary', opts
        end
      end
    end
  end
end
