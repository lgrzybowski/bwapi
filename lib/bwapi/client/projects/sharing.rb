module BWAPI
  class Client
    module Projects
      # Sharing module for projects/sharing endpoints
      module Sharing
        # Default shares of a project
        #
        # @return [Hash] Default project shares information
        def default_project_sharing
          get 'projects/sharing'
        end

        # Shares of a project
        #
        # @param project_id [Integer] Id of project
        # @param opts [Hash] options hash of parameters
        # @options opts [Boolean] sharedOnly Boolean flag to return only shared shares (default: false)
        # @return [Hash] Specific project shares
        def project_sharing(project_id, opts = {})
          get "projects/#{project_id}/sharing", opts
        end

        # Update shares of a project
        #
        # @param project_id [Integer] Id of project
        # @param opts [Hash] options hash of parameters
        # @options opts [Array] ProjectShareDTO Shares to be edited
        # @return [Hash] Updated project shares
        def update_project_sharing(project_id, opts = {})
          put "projects/#{project_id}/sharing", opts
        end

        # User share of a project
        #
        # @param project_id [Integer] Id of project
        # @param user_id [Integer] Id of user
        # @return [Hash] Share of project for user
        def project_sharing_user(project_id, user_id)
          get "projects/#{project_id}/sharing/#{user_id}"
        end

        # Edit user share of a project
        #
        # @param project_id [Integer] Id of project
        # @param user_id [Integer] Id of user
        # @options opts [Hash] User share to be edited
        # @return [Hash] Updated share of project for user
        def update_project_sharing_user(project_id, user_id, opts = {})
          put "projects/#{project_id}/sharing/#{user_id}", opts
        end
      end
    end
  end
end
