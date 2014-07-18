# encoding: utf-8
require 'bwapi/client/projects/signals/groups'

module BWAPI
  class Client
    module Projects
      module Signals
        # Groups module for projects/signals/groups endpoint
        module Groups
          # Get all signals belonging to user in project
          #
          # @param project_id [Integer] Id of project
          # @param opts [Hash] options hash of parameters
          # @option opts [Integer] page Page of projects to retrieve
          # @option opts [Integer] pageSize Results per page of results
          # @return [Hashie::Mash] All signal groups for project
          def signal_groups(project_id, opts = {})
            get "/projects/#{project_id}/signals/groups", opts
          end
        end
      end
    end
  end
end
