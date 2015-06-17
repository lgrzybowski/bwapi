module BWAPI
  class Client
    module Projects
      # Alerts module for alerts endpoints
      module Alerts
        # Get a list of alerts
        #
        # @param project_id [Integer] Id of project
        # @return [Hash] Alerts in project
        def alerts(project_id)
          get "projects/#{project_id}/alerts"
        end

        # Get a selected alert
        #
        # @param project_id [Integer] Id of project
        # @param alert_id [Integer] Id of alert
        # @return [Hash] Alert in project
        def get_alert(project_id, alert_id)
          get "projects/#{project_id}/alerts/#{alert_id}"
        end

        # Create a new alert in project
        #
        # @param project_id [Integer] Id of project
        # @param opts [Hash] options hash of parameters
        # @option opts [String] alertTypes type of alert
        # @option opts [Integer] clientId The id of the client
        # @option opts [Date] created Creation date
        # @option opts [Boolean] deleted Alert deleted check
        # @option opts [Boolean] emailCreator Does this alert also email the creator
        # @option opts [Boolean] enabled Alert enabled check
        # @option opts [Boolean] externalLink External link
        # @option opts [Integer] frequency Frequence of checks
        # @option opts [Integer] id The id of Frequence
        # @option opts [Long] lastResourceId Last checked resource id
        # @option opts [Integer] mentionsPerAlert Number of mentions
        # @option opts [String] name Alert name
        # @option opts [Date] nextRun Date/time of next run
        # @option opts [Integer] queryId Corresponding query id
        # @option opts [String] queryName Name of the query this alert relates to
        # @option opts [Integer] repeatOnDayOfWeek Repeats in a week
        # @option opts [Integer] repeatOnHourOfDay Repeats in a day
        # @option opts [String] searchLiteString Filters to be considered
        # @option opts [Double] threshold Threshold
        # @option opts [Integer] userId Corresponding user id
        # @return [Hash] New alert
        def create_alert(project_id, opts = {})
          post "/projects/#{project_id}/alerts", opts
        end

        # Update an existing alert in project
        #
        # @param project_id [Integer] Id of project
        # @param opts [Hash] options hash of parameters
        # @option opts [String] alertTypes type of alert
        # @option opts [Integer] clientId The id of the client
        # @option opts [Date] created Creation date
        # @option opts [Boolean] deleted Alert deleted check
        # @option opts [Boolean] emailCreator Does this alert also email the creator
        # @option opts [Boolean] enabled Alert enabled check
        # @option opts [Boolean] externalLink External link
        # @option opts [Integer] frequency Frequence of checks
        # @option opts [Integer] id The id of Frequence
        # @option opts [Long] lastResourceId Last checked resource id
        # @option opts [Integer] mentionsPerAlert Number of mentions
        # @option opts [String] name Alert name
        # @option opts [Date] nextRun Date/time of next run
        # @option opts [Integer] queryId Corresponding query id
        # @option opts [String] queryName Name of the query this alert relates to
        # @option opts [Integer] repeatOnDayOfWeek Repeats in a week
        # @option opts [Integer] repeatOnHourOfDay Repeats in a day
        # @option opts [String] searchLiteString Filters to be considered
        # @option opts [Double] threshold Threshold
        # @option opts [Integer] userId Corresponding user id
        # @return [Hash] Returns alert as saved
        def update_alert(project_id, opts = {})
          put "/projects/#{project_id}/alerts", opts
        end
      end
    end
  end
end
