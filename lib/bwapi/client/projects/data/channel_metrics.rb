module BWAPI
  class Client
    module Projects
      module Data
        # ChannelMetrics module for projects/data/channelMetrics endpoints
        module ChannelMetrics
          # Get all channel metrics data for queries broken down by a second dimension
          #
          # @param project_id [Integer] Id of project
          # @param dimension_two [String] Dimension 2 value
          # @param opts [Hash] options hash of parameters
          # @option opts [Hash] filter The filters to apply
          # @return [Hash] All data channel metrics queries mentions
          def data_channel_metrics_queries(project_id, dimension_two, opts = {})
            get "projects/#{project_id}/data/channelMetrics/queries/#{dimension_two}", opts
          end
        end
      end
    end
  end
end
