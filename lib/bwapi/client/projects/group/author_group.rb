module BWAPI
  class Client
    module Projects
      module Group
        # AuthorGroup module for projects/group/author endpoints
        module AuthorGroup
          # Get summary of all author groups in project
          #
          # @param project_id [Integer] Id of project
          # @return [Hashie::Mash] Summary of all author groups in project
          def author_groups_summary(project_id, opts = {})
            get "projects/#{project_id}/group/author/summary", opts
          end

          # Get a specific author group in project
          #
          # @param project_id [Integer] Id of project
          # @param author_group_id [Integer] Id of author group
          # @return [Hashie::Mash] Specific author group
          def get_author_group(project_id, author_group_id)
            get "projects/#{project_id}/group/author/#{author_group_id}"
          end

          # Create a new author group in project
          #
          # @param project_id [Integer] Id of project
          # @param opts [Hash] options hash of parameters
          # @option opts [String] name The human readable name for the group
          # @option opts [Integer] userId The id of the creating user
          # @option opts [Array] sharedProjectIds The ids of the shared projects
          # @option opts [String] shared The type of sharing for the group
          # @option opts [Array] authors The authors in the group
          # @return [Hashie::Mash] New author group
          def create_author_group(project_id, opts = {})
            post "projects/#{project_id}/group/author", opts
          end

          # Update an existing author group in project
          #
          # @param project_id [Integer] Id of project
          # @param author_group_id [Integer] Id of author group
          # @param opts [Hash] options hash of parameter
          # @option opts [Integer] id The id of the group
          # @option opts [String] name The human readable name for the group
          # @option opts [Integer] userId The id of the creating user
          # @option opts [Array] sharedProjectIds The ids of the shared projects
          # @option opts [String] shared The type of sharing for the group
          # @option opts [Array] authors The authors in the group
          # @return [Hashie::Mash] Updated author group
          def update_author_group(project_id, author_group_id, opts = {})
            put "projects/#{project_id}/group/author/#{author_group_id}", opts
          end

          # Delete an existing author group project
          #
          # @param project_id [Integer] Id of project
          # @param author_group_id [Integer] Id of author group
          # @return [Hashie::Mash] Deleted author group
          def delete_author_group(project_id, author_group_id)
            delete "projects/#{project_id}/group/author/#{author_group_id}"
          end
        end
      end
    end
  end
end
