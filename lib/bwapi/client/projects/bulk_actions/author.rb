module BWAPI
  class Client
    module Projects
      module BulkActions
        # Author module for projects/bulkactions/author endpoints
        module Author
          # Create a new bulk action in project for an author
          #
          # @param project_id [Integer] Id of project
          # @param opts [Hash] options hash of parameters
          # @option opts [String] accountType Account type to assign
          # @option opts [String] authorName Author's name
          # @option opts [String] domain Author's domain
          # @option opts [String] gender Gender to assign
          # @option opts [Integer] id of the bulk action
          # @option opts [Array] interests list<String> Interests to assign
          # @option opts [Array] professions list<AuthorProfessionDTO> Professions to assign
          # @return [Hash] New bulk action for mentions
          def bulk_edit_author(project_id, opts = {})
            post "projects/#{project_id}/bulkactions/author", opts
          end
        end
      end
    end
  end
end
