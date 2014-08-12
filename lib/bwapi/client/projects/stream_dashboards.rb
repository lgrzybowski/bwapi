require 'bwapi/client/projects/stream_dashboards/streams'

module BWAPI
  class Client
    module Projects
      # StreamDashboards module for projects/stream_dashboards endpoints
      module StreamDashboards
        # Get all stream dashboards in project
        #
        # @param project_id [Integer] Id of project
        # @param opts [Hash] options hash of parameters
        # @option opts [Integer] page Page of projects to retrieve
        # @option opts [Integer] pageSize Results per page of results
        # @return [Hashie::Mash] All stream dashboards for project
        def stream_dashboards(project_id, opts = {})
          get "projects/#{project_id}/streamDashboards", opts
        end

        # Get a stream dashboards summary
        #
        # @param project_id [Integer] Id of project
        # @param opts [Hash] options hash of parameters
        # @option opts [Integer] page Page of projects to retrieve
        # @option opts [Integer] pageSize Results per page of results
        # @return [Hashie::Mash] All stream dashboards summary for project
        def get_stream_dashboards_summary(project_id)
          get "projects/#{project_id}/streamDashboards/summary"
        end

        # Get a stream dashboard complete with streams
        #
        # @param project_id [Integer] Id of project
        # @param stream_dashboard_id [Integer] Id of stream dashboard
        # @return [Hashie::Mash] Stream dashboard complete with streams
        def get_stream_dashboard_complete(project_id, stream_dashboard_id)
          get "projects/#{project_id}/streamDashboards/#{stream_dashboard_id}/complete"
        end

        # Get a stream dashboard
        #
        # @param project_id [Integer] Id of project
        # @param stream_dashboard_id [Integer] Id of stream dashboard
        # @return [Hashie::Mash] Stream dashboard
        def get_stream_dashboard(project_id, stream_dashboard_id)
          get "projects/#{project_id}/streamDashboards/#{stream_dashboard_id}"
        end

        # Create a new stream dashboard
        #
        # @param project_id [Integer] Id of project
        # @param opts [Hash] options hash of parameters
        # @option opts [Integer] id Id of the stream
        # @option opts [String] name Name of the stream
        # @option opts [String] created The stream creation date
        # @option opts [String] filter the stream filter
        # @return [Hashie::Mash] New stream dashboard
        def create_stream_dashboard(project_id, opts = {})
          post "projects/#{project_id}/streamDashboards", opts
        end

        # Update a stream dashboard
        #
        # @param project_id [Integer] Id of project
        # @param stream_dashboard_id [Integer] Id of stream dashboard
        # @param opts [Hash] options hash of parameters
        # @option opts [Integer] id Id of the stream
        # @option opts [String] name Name of the stream
        # @option opts [String] created The stream creation date
        # @option opts [String] filter the stream filter
        # @return [Hashie::Mash] Updated stream dashboard
        def update_stream_dashboard(project_id, stream_dashboard_id, opts = {})
          put "projects/#{project_id}/streamDashboards/#{stream_dashboard_id}", opts
        end

        # Delete a stream dashboard
        #
        # @param project_id [Integer] Id of project
        # @param stream_dashboard_id [Integer] Id of stream dashboard
        def delete_stream_dashboard(project_id, stream_dashboard_id)
          delete "projects/#{project_id}/streamDashboards/#{stream_dashboard_id}"
        end

        include BWAPI::Client::Projects::StreamDashboards::Streams
      end
    end
  end
end
