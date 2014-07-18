# encoding: utf-8
require 'bwapi/client/projects/signals/group'

module BWAPI
  class Client
    module Projects
      # Signals module for projects/signals endpoints
      module Signals
        # Backfill module for projects/rules/backfill endpoint
        module Backfill
          # Get all signals belonging to user in project
          #
          # @param project_id [Integer] Id of project
          # @param opts [Hash] options hash of parameters
          # @option opts [Integer] page Page of projects to retrieve
          # @option opts [Integer] pageSize Results per page of results
          # @return [Hashie::Mash] All signal groups for project
          def signal_groups(project_id, opts = {})
            get "/projects/#{projectId}/signals/groups", opts
          end
        end
      end
    end
  end
end
