# encoding: utf-8

module BWAPI
  class Client
    module Projects
      module BulkActions
        # Mentions module for projects/bulkactions/mentions endpoints
        module Mentions
          # Create a new bulk action in project for mentions
          #
          # @param project_id [Integer] Id of project
          # @param opts [Hash] options hash of parameters
          # @option opts [Hash] action <mention patch dto> to apply to these mentions
          # @option opts [Hash] filter <filter dto> to specify what kind of mentions this bulk action should apply to
          # @option opts [Integer] sampleAmount Amount to be sample by this bulk action
          # @return [Hashie::Mash] New bulk action for mentions
          def bulk_edit_mentions(project_id, opts = {})
            post "projects/#{project_id}/bulkactions/mentions", opts
          end
        end
      end
    end
  end
end
