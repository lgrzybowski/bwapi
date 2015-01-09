module BWAPI
  class Client
    module Brandwatch
      # usageReport module for brandwatch/usageReport endpoint
      module UsageReport
        # Get the Clients Mention Usage report
        #
        # @param clientId [Integer] Id of client
        # @param startDate [DateTime] Report startDate
        # @param endDate [DateTime] Report endDate
        # @param opts [Hash] options hash of parameters
        # @return [Hash] Returns usage report for active client
        def brandwatch_usage_report(clientId, startDate, endDate, opts = {})
          get "brandwatch/usageReport/client/#{clientId}/start/#{startDate}/end/#{endDate}", opts
        end
      end
    end
  end
end
