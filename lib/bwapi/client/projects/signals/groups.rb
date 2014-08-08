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
          # @return [Hashie::Mash] All signal groups for project
          def signal_groups(project_id, opts = {})
            get "/projects/#{project_id}/signals/groups", opts
          end

          # Get specific signal group belonging to user in project
          #
          # @param project_id [Integer] Id of project
          # @param group_id [Array] Id of group
          # @return [Hashie::Mash] specific signal group
          def get_signal_group(project_id, group_id)
            get "/projects/#{project_id}/signals/groups/#{group_id}"
          end

          # Get specific signal group belonging to user in project
          #
          # @param project_id [Integer] Id of project
          # @return [Hashie::Mash] specific signal group
          def create_signal_group(project_id, opts = {})
            post "/projects/#{project_id}/signals/group", opts
          end

          # Get specific signal group belonging to user in project
          #
          # @param project_id [Integer] Id of project
          # @param project_id [Array] Id of group
          # @return [Hashie::Mash] specific signal group
          def update_signal_group(project_id, group_id, opts = {})
            put "/projects/#{project_id}/signals/groups/#{group_id}", opts
          end

          # Get specific signal group belonging to user in project
          #
          # @param project_id [Integer] Id of project
          # @param project_id [Array] Id of group
          # @return [Hashie::Mash] specific signal group
          def delete_signal_group(project_id, group_id)
            delete "/projects/#{project_id}/signals/groups/#{group_id}"
          end
        end
      end
    end
  end
end
