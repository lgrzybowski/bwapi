module BWAPI
  class Client
    module Projects
      module Group
        # LocationGroup module for projects/group/location endpoints
        module LocationGroup
          # Get summary of all location groups in project
          #
          # @param project_id [Integer] Id of project
          # @return [Hashie::Mash] Summary of all location groups in project
          def location_groups_summary(project_id, opts = {})
            get "projects/#{project_id}/group/location/summary", opts
          end

          # Get a specific location group in project
          #
          # @param project_id [Integer] Id of project
          # @param location_group_id [Integer] Id of location group
          # @return [Hashie::Mash] Specific location group
          def get_location_group(project_id, location_group_id)
            get "projects/#{project_id}/group/location/#{location_group_id}"
          end

          # Create a new location group in project
          #
          # @param project_id [Integer] Id of project
          # @param opts [Hash] options hash of parameters
          # @option opts [String] name The human readable name for the group
          # @option opts [Integer] userId The id of the creating user
          # @option opts [Array] sharedProjectIds The ids of the shared projects
          # @option opts [String] shared The type of sharing for the group
          # @option opts [Array] location The location in the group
          # @return [Hashie::Mash] New location group
          def create_location_group(project_id, opts = {})
            post "projects/#{project_id}/group/location", opts
          end

          # Update an existing location group in project
          #
          # @param project_id [Integer] Id of project
          # @param location_group_id [Integer] Id of location group
          # @param opts [Hash] options hash of parameter
          # @option opts [Integer] id The id of the group
          # @option opts [String] name The human readable name for the group
          # @option opts [Integer] userId The id of the creating user
          # @option opts [Array] sharedProjectIds The ids of the shared projects
          # @option opts [String] shared The type of sharing for the group
          # @option opts [Array] location The location in the group
          # @return [Hashie::Mash] Updated location group
          def update_location_group(project_id, location_group_id, opts = {})
            put "projects/#{project_id}/group/location/#{location_group_id}", opts
          end

          # Delete an existing location group project
          #
          # @param project_id [Integer] Id of project
          # @param location_group_id [Integer] Id of location group
          # @return [Hashie::Mash] Deleted location group
          def delete_location_group(project_id, location_group_id)
            delete "projects/#{project_id}/group/location/#{location_group_id}"
          end
        end
      end
    end
  end
end
