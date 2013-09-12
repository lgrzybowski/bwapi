module BWAPI
  class Client
    module Projects
      # Sharing module for projects/sharing endpoints
      module Sharing

        # Default shares of a project
        #
        # @return [Hashie::Mash] Default project shares information
        def default_project_sharing
          get "projects/sharing"
        end
        alias :sharing :default_project_sharing

        # Shares of a project
        #
        # @param id [Integer] Id of project
        # @param opts [Hash] options hash of parameters
        # @options opt [Integer] id Id of the project
        # @options opt [Boolean] sharedOnly Boolean flag to return only shared shares (default: false)
        # @return [Hashie::Mash] Specific project shares
        def project_sharing id, opts={}
          get "projects/#{id}/sharing", opts
        end

        # Update shares of a project
        #
        # @param id [Integer] Id of project
        # @param opts [Hash] options hash of parameters
        # @options opt [Integer] id Id of the project
        # @options opt [Array] ProjectShareDTO Shares to be edited
        # @return [Hashie::Mash] Updated project shares
        def update_project_sharing id, opts={}
          put "projects/#{id}/sharing", opts
        end

        # User share of a project
        #
        # @param project_id [Integer] Id of project
        # @param user_id [Integer] Id of user
        # @return [Hashie::Mash] Share of project for user
        def project_sharing_user project_id, user_id
          get "projects/#{project_id}/sharing/#{user_id}"
        end

        # Edit user share of a project
        #
        # @param project_id [Integer] Id of project
        # @param user_id [Integer] Id of user
        # @return [Hashie::Mash] Updated share of project for user
        def update_project_sharing_user project_id, user_id
          put "projects/#{project_id}/sharing/#{user_id}"
        end

      end
    end
  end
end