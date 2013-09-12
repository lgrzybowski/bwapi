module BWAPI
  class Client
    module Projects
      module Queries
        # Mentions module for projects/queries/mentions endpoints
        module Mentions

          # Get the full text of query mention
          #
          # @param project_id [Integer] Id of project
          # @param query_id [Integer] Id of query
          # @param mention_id [Integer] Id of mention
          # @return [Hashie::Mash] Content of query mention
          def get_query_mention_content project_id, query_id, mention_id
            get "projects/#{project_id}/queries/#{query_id}/mentions/#{mention_id}/content"
          end
          alias :query_mention_content :get_query_mention_content
          alias :mention_content :get_query_mention_content

          # Update query mention
          #
          # @param project_id [Integer] Id of project
          # @param query_id [Integer] Id of query
          # @param mention_id [Integer] Id of mention
          # @param opts [Hash] options hash of parameters
          # @option opts [Integer] projectId Id of the project
          # @option opts [Integer] queryId Id of the query
          # @option opts [Integer] id Id of the mention
          # @option opts [Hash] MentionPatchDTO patch to be applied
          # @return [Hashie::Mash] Updated query mention
          def update_query_mention project_id, query_id, mention_id, opts
            patch "projects/#{project_id}/queries/#{query_id}/mentions/#{mention_id}", opts
          end

          # Delete query mention
          #
          # @param project_id [Integer] Id of project
          # @param query_id [Integer] Id of query
          # @param mention_id [Integer] Id of mention
          # @param opts [Hash] options hash of parameters
          # @option opts [Integer] projectId Id of the project
          # @option opts [Integer] queryId Id of the query
          # @option opts [Integer] id Id of the mention
          # @option opts [Hash] Map patch to be applied
          # @return [Hashie::Mash] Deleted query mention
          def delete_query_mention project_id, query_id, mention_id, opts
            delete "projects/#{project_id}/queries/#{query_id}/mentions/#{mention_id}", opts
          end

        end
      end
    end
  end
end