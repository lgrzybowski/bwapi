require 'bwapi/client/projects/signals/groups'

module BWAPI
  class Client
    module Projects
      module Signals
        # Groups module for projects/signals/groups endpoint
        module Groups
          # Get all signal groups
          # @param projectId [Integer] Id of the existing project
          # @option opts [Integer] page Page of results to retrieve
          # @option opts [Integer] pageSize Results per page of results
          # @return [Hashie::Mash] All signal groups for project
          def signal_groups(project_id, opts = {})
            get "/projects/#{project_id}/signals/groups", opts
          end

          # Get a specific signal group
          # @param projectId [Integer] Id of project
          # @param groupId [Integer] Id of group
          # @return [Hashie::Mash] specific signals group
          def get_signal_group(project_id, group_id)
            get "/projects/#{project_id}/signals/groups/#{group_id}"
          end

          # Create a new signal group
          # @param projectId [Integer] Project ID of the Signal Group to be updated
          # @param opts [Hash] options hash of parameters
          # @option opts [Integer] projectId Project ID of Signal Group
          # @option opts [Array] queryIds List of query IDs in the Signal Group
          # @option opts [String] name Name of the Signal Group
          # @option opts [Array] subscribers List of the email recipients of the Signal Group
          # @option opts [Date] lastModified Last modified date of the Signal Group
          # @option opts [Integer] id ID of Signal Group
          # @option opts [String] creator Creator of the Signal Group
          # @return [Hashie::Mash] specific signal group
          def create_signal_group(project_id, opts = {})
            post "/projects/#{project_id}/signals/groups", opts
          end

          # Update a signal group
          # @param projectId [Integer] Project ID of the Signal Group to be updated
          # @param groupId [Integer] Id of group
          # @param opts [Hash] options hash of parameters
          # @option opts [Integer] projectId Project ID of Signal Group
          # @option opts [Array] queryIds List of query IDs in the Signal Group
          # @option opts [String] name Name of the Signal Group
          # @option opts [Array] subscribers List of the email recipients of the Signal Group
          # @option opts [Date] lastModified Last modified date of the Signal Group
          # @option opts [Integer] id ID of Signal Group
          # @option opts [String] creator Creator of the Signal Group
          # @return [Hashie::Mash] specific signal group
          def update_signal_group(project_id, group_id, opts = {})
            put "/projects/#{project_id}/signals/groups/#{group_id}", opts
          end

          # Delete a signal group
          # @param projectId [Integer] Id of project
          # @param groupId [Integer] Id of group
          # @return [Hashie::Mash] specific signal group
          def delete_signal_group(project_id, group_id)
            delete "/projects/#{project_id}/signals/groups/#{group_id}"
          end
        end
      end
    end
  end
end
