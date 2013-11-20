module BWAPI
  class Client
    module Projects
      module Queries
        # Backfill module for projects/queries/backfill endpoints
        module Backfill

          # Get all backfills for query
          #
          # @param project_id [Integer] Id of project
          # @param query_id [Integer] Id of query
          # @param opts [Hash] options hash of parameters
          # @option opts [Integer] page Page of results to retrieve
          # @option opts [Integer] pageSize Results per page
          # @return [Hashie::Mash] All backfills for query
          def backfills project_id, query_id, opts={}
            get "projects/#{project_id}/queries/#{query_id}/backfill", opts
          end

          # Get specific backfill for query
          #
          # @param project_id [Integer] Id of project
          # @param query_id [Integer] Id of query
          # @param backfill_id [Integer] Id of backfill
          # @return [Hashie::Mash] Backfill for query
          def get_backfill project_id, query_id, backfill_id
            get "projects/#{project_id}/queries/#{query_id}/backfill/#{backfill_id}"
          end
          alias :backfill :get_backfill

          # Create new backfill for query
          #
          # @param project_id [Integer] Id of project
          # @param query_id [Integer] Id of query
          # @param opts [Hash] options hash of parameters
          # @option opts [Integer] projectId Id of the project
          # @option opts [Integer] queryId Id of the query
          # @option opts [Integer] id Id of the backfill
          # @option opts [Integer] mentionsFound Mentions found from the backfill
          # @option opts [Date] maxDate Max date for the backfill
          # @option opts [Date] minDate Min date for the backfill
          # @option opts [String] status Status of backfill
          # @option opts [Integer] queryId Query id of backfill
          # @option opts [String] statusMessages Current status message of backfill
          # @return [Hashie::Mash] New backfill for query
          def create_backfill project_id, query_id, opts
            post "projects/#{project_id}/queries/#{query_id}/backfill", opts
          end

          # Delete backfill for query
          #
          # @param project_id [Integer] Id of project
          # @param query_id [Integer] Id of query
          # @param backfill_id [Integer] Id of backfill
          # @return [Hashie::Mash] Deleted backfill for query
          def delete_backfill project_id, query_id, backfill_id
            delete "projects/#{project_id}/queries/#{query_id}/backfill/#{backfill_id}"
          end

        end
      end
    end
  end
end