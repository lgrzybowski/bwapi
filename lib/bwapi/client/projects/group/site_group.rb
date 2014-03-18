module BWAPI
  class Client
    module Projects
      module Group
        # SiteGroup module for projects/group/site endpoints
        module SiteGroup
          # Get summary of all site groups in project
          #
          # @param project_id [Integer] Id of project
          # @return [Hashie::Mash] Summary of all site groups in project
          def site_groups_summary project_id, opts={}
            get "projects/#{project_id}/group/site/summary", opts
          end

          # Get a specific site group in project
          #
          # @param project_id [Integer] Id of project
          # @param site_group_id [Integer] Id of site group
          # @return [Hashie::Mash] Specific site group
          def get_site_group project_id, site_group_id
            get "projects/#{project_id}/group/site/#{site_group_id}"
          end
          alias :site_group :get_site_group

          # Create a new site group in project
          #
          # @param project_id [Integer] Id of project
          # @param opts [Hash] options hash of parameters
          # @option opts [String] name The human readable name for the group
          # @option opts [Integer] userId The id of the creating user
          # @option opts [Array] sharedProjectIds The ids of the shared projects
          # @option opts [String] shared The type of sharing for the group
          # @option opts [Array] sites The sites in the group
          # @return [Hashie::Mash] New site group
          def create_site_group project_id, opts={}
            post "projects/#{project_id}/group/site", opts
          end

          # Update an existing site group in project
          #
          # @param project_id [Integer] Id of project
          # @param site_group_id [Integer] Id of site group
          # @param opts [Hash] options hash of parameter
          # @option opts [Integer] id The id of the group
          # @option opts [String] name The human readable name for the group
          # @option opts [Integer] userId The id of the creating user
          # @option opts [Array] sharedProjectIds The ids of the shared projects
          # @option opts [String] shared The type of sharing for the group
          # @option opts [Array] sites The sites in the group
          # @return [Hashie::Mash] Updated site group
          def update_site_group project_id, site_group_id, opts={}
            put "projects/#{project_id}/group/site/#{site_group_id}", opts
          end

          # Delete an existing site group project
          #
          # @param project_id [Integer] Id of project
          # @param site_group_id [Integer] Id of site group
          # @return [Hashie::Mash] Deleted site group
          def delete_site_group project_id, site_group_id
            delete "projects/#{project_id}/group/site/#{site_group_id}"
          end
        end
      end
    end
  end
end