# encoding: utf-8
module BWAPI
  class Client
    module Projects
      module StreamDashboards
        # Streams module for projects/stream_dashboards/streams endpoints
        module Streams
          # Get all streams in a stream dashboard
          #
          # @param project_id [Integer] Id of project
          # @param opts [Hash] options hash of parameters
          # @option opts [Integer] page Page of results to retrieve
          # @option opts [Integer] pageSize Results per page of results
          # @return [Hashie::Mash] All stream dashboards for project
          def get_streams(project_id, stream_dashboard_id)
            get "projects/#{project_id}/streamDashboards/#{stream_dashboard_id}/streams"
          end

          # Get a stream in a stream dashboard
          #
          # @param project_id [Integer] Id of project
          # @param stream_dashboard_id [Integer] Id of stream dashboard
          # @param stream_id [Integer] Id of the stream
          # @return [Hashie::Mash] Specific stream
          def get_stream(project_id, stream_dashboard_id, stream_id)
            get "projects/#{project_id}/streamDashboards/#{stream_dashboard_id}/streams/#{stream_id}"
          end

          # Create a stream in a stream dashboard
          #
          # @param project_id [Integer] Id of project
          # @param stream_dashboard_id [Integer] Id of stream dashboard
          # @param opts [Hash] options hash of parameters
          # @option opts [Integer] id Id of the stream
          # @option opts [String] name Name of the stream
          # @option opts [String] created Creation date of stream
          # @option opts [String] filter Filter of the stream
          # @option opts [String] settings Settings of the stream
          # @option opts [String] lastModified Last modification date of stream
          # @return [Hashie::Mash] Specific stream
          def create_stream(project_id, stream_dashboard_id, opts = {})
            post "projects/#{project_id}/streamDashboards/#{stream_dashboard_id}/streams", opts
          end

          # Update a stream in a stream dashboard
          #
          # @param project_id [Integer] Id of project
          # @param stream_dashboard_id [Integer] Id of stream dashboard
          # @param stream_id [Integer] Id of the stream
          # @param opts [Hash] options hash of parameters
          # @option opts [Integer] id Id of the stream
          # @option opts [String] name Name of the stream
          # @option opts [String] created Creation date of stream
          # @option opts [String] filter Filter of the stream
          # @option opts [String] settings Settings of the stream
          # @option opts [String] lastModified Last modification date of stream
          # @return [Hashie::Mash] Updated stream
          def update_stream(project_id, stream_dashboard_id, stream_id, opts = {})
            put "projects/#{project_id}/streamDashboards/#{stream_dashboard_id}/streams/#{stream_id}", opts
          end

          # Delete a stream in a stream dashboard
          #
          # @param project_id [Integer] Id of project
          # @param stream_dashboard_id [Integer] Id of stream dashboard
          # @param stream_id [Integer] Id of the stream
          # @return [Hashie::Mash] Deleted stream
          def delete_stream(project_id, stream_dashboard_id, stream_id)
            delete "projects/#{project_id}/streamDashboards/#{stream_dashboard_id}/streams/#{stream_id}"
          end
        end
      end
    end
  end
end
