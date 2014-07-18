# encoding: utf-8
require 'bwapi/client/projects/signals/groups'

module BWAPI
  class Client
    module Projects
      # Signals module for projects/signals endpoints
      module Signals
        # Get all signals belonging to user in project
        #
        # @param project_id [Integer] Id of project
        # @param opts [Hash] options hash of parameters
        # @option opts [Integer] id Id of the query
        # @option opts [Integer] page Page of projects to retrieve
        # @option opts [Integer] pageSize Results per page of results
        # @option opts [Integer] importance Importance of signal
        # @option opts [String] type Type of signal
        # @option opts [Hash] filter The filter(s) to apply
        # @return [Hashie::Mash] All signals for user in project
        def signals(project_id, opts = {})
          get "projects/#{project_id}/signals", opts
        end

        include BWAPI::Client::Projects::Signals::Groups
      end
    end
  end
end
