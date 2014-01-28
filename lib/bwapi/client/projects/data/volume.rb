module BWAPI
  class Client
    module Projects
      module Data
        # Volume module for projects/data/volume endpoints
        module Volume

          # Get all chart data for date ranges broken down by days
          #
          # @param project_id [Integer] Id of project
          # @param opts [Hash] options hash of parameters
          # @option opts [Hash] filter The filters to apply
          # @option opts [Array] dateRanges Date range ids
          # @return [Hashie::Mash] All Chart data mentions
          def data_date_ranges_days project_id, opts={}
            get "projects/#{project_id}/data/volume/dataRanges/days", opts
          end

        end
      end
    end
  end
end