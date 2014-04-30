# encoding: utf-8

module BWAPI
  class Client
    module Projects
      # Tags module for projects/tags endpoints
      module Tags
        # Get all tags in project
        #
        # @param project_id [Integer] Id of project
        # @option opts [Integer] page Page of projects to retrieve
        # @option opts [Integer] pageSize Results per page of results
        # @return [Hashie::Mash] All tags in project
        def tags(project_id, opts = {})
          get "projects/#{project_id}/tags", opts
        end

        # Get a specific tag in project
        #
        # @param project_id [Integer] Id of project
        # @param tag_id [Integer] Id of tag
        # @return [Hashie::Mash] Specific tag
        def get_tag(project_id, tag_id)
          get "projects/#{project_id}/tags/#{tag_id}"
        end

        # Create a new tag in project
        #
        # @param project_id [Integer] Id of project
        # @param opts [Hash] options hash of parameters
        # @option opts [Integer] id Id of the tag
        # @option opts [String] name Name of the tag
        # @return [Hashie::Mash] New tag
        def create_tag(project_id, opts = {})
          post "projects/#{project_id}/tags", opts
        end

        # Update an existing tag in project
        #
        # @param project_id [Integer] Id of project
        # @param tag_id [Integer] Id of tag
        # @param opts [Hash] options hash of parameters
        # @option opts [Integer] id Id of the tag
        # @option opts [String] name Name of the tag
        # @return [Hashie::Mash] Updated tag
        def update_tag(project_id, tag_id, opts = {})
          put "projects/#{project_id}/tags/#{tag_id}", opts
        end

        # Delete an existing tag in project
        #
        # @param project_id [Integer] Id of project
        # @param tag_id [Integer] Id of tag
        # @return [Hashie::Mash] Deleted tag
        def delete_tag(project_id, tag_id)
          delete "projects/#{project_id}/tags/#{tag_id}"
        end
      end
    end
  end
end
