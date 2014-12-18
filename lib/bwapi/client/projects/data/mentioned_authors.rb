module BWAPI
  class Client
    module Projects
      module Data
        # MentionedAuthors module for the /projects/{project_id}/data/mentionedauthors endpoint
        module MentionedAuthors
          # Get top n mentioned authors
          #
          # @param project_id [Integer] Id of project
          # @param opts [Hash] options hash of parameters
          # @option opts [Hash] filter The filters to apply
          # @option opts [Integer] limit The limit to return
          # @option opts [String] orderBy Parameter to sort by
          # @option opts [String] orderDirection Direction of sort
          # @return [array] top n mentioned_authors based on parameter passed
          def data_mentioned_authors(project_id, opts = {})
            get "/projects/#{project_id}/data/mentionedauthors", opts
          end
        end
      end
    end
  end
end
