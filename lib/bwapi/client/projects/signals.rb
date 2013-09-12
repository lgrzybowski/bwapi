module BWAPI
  class Client
    module Projects
      # Signals module for projects/signals endpoints
      module Signals

        # Get all signals belonging to user in project
        #
        # @param id [Integer] Id of project
        # @param opts [Hash] options hash of parameters
        # @option opts [Integer] id Id of the query
        # @option opts [Integer] page Page of projects to retrieve
        # @option opts [Integer] pageSize Results per page of results
        # @option opts [Integer] importance Importance of signal
        # @option opts [String] type Type of signal
        # @option opts [Integer] projectId Project id of the signal
        # @option opts [Hash] filter The filter(s) to apply
        # @return [Hashie::Mash] All signals for user in project
        def signals id, opts
          get "projects/#{id}/signals", opts
        end

        # Set the vote type and comment of a signal for a given user
        #
        # @param id [Integer] Id of project
        # @param opts [Hash] options hash of parameters
        # @option opts [Integer] userId Id of the user
        # @option opts [Integer] voteType Type of vote
        # @option opts [String] comment User comment
        # @option opts [Integer] signalId Id of signal
        # @option opts [Integer] projectId Project id of the signal
        # @return [Hashie::Mash] Update signal for given user
        def set_signal_vote id, opts
          post "projects/#{project_id}/signals/vote", opts
        end

      end
    end
  end
end