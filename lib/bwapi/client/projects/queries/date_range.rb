module BWAPI
  class Client
    module Projects
      module Queries
        # DateRange module for projects/queries/dateRange endpoints
        module DateRange
          # Get all date ranges for query
          #
          # @param project_id [Integer] Id of project
          # @param query_id [Integer] Id of query
          # @return [Hash] All date ranges for query
          def date_ranges(project_id, query_id)
            get "projects/#{project_id}/queries/#{query_id}/date-range"
          end

          # Get specific date range for query
          #
          # @param project_id [Integer] Id of project
          # @param query_id [Integer] Id of query
          # @param date_range_id [Integer] Id of date range
          # @return [Hash] Specific date range for query
          def get_date_range(project_id, query_id, date_range_id)
            get "projects/#{project_id}/queries/#{query_id}/date-range/#{date_range_id}"
          end

          # Create a new date range for query
          #
          # @param project_id [Integer] Id of project
          # @param query_id [Integer] Id of query
          # @param opts [Hash] options hash of parameters
          # @option opts [Integer] projectId Id of the project
          # @option opts [Integer] queryId Id of the query
          # @option opts [Array] StoredDateRangeDTO Date ranges to be stored
          # @return [Hash] New date range
          def create_date_range(project_id, query_id, opts = {})
            post "projects/#{project_id}/queries/#{query_id}/date-range", opts
          end

          # Update an existing date range for query
          #
          # @param project_id [Integer] Id of project
          # @param query_id [Integer] Id of query
          # @param date_range_id [Integer] Id of date range
          # @param opts [Hash] options hash of parameters
          # @option opts [Integer] projectId Id of the project
          # @option opts [Integer] queryId Id of the query
          # @option opts [Integer] dateRangeId Id of the date range
          # @option opts [Array] StoredDateRangeDTO Date ranges to be edited
          # @return [Hash] Update date range
          def update_date_range(project_id, query_id, date_range_id, opts = {})
            put "projects/#{project_id}/queries/#{query_id}/date-range/#{date_range_id}", opts
          end

          # Delete an existing date range for query
          #
          # @param project_id [Integer] Id of project
          # @param query_id [Integer] Id of query
          # @param date_range_id [Integer] Id of date range
          # @return [Hash] Deleted date range
          def delete_date_range(project_id, query_id, date_range_id)
            delete "projects/#{project_id}/queries/#{query_id}/date-range/#{date_range_id}"
          end
        end
      end
    end
  end
end
