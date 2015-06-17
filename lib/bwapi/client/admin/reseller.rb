module BWAPI
  class Client
    module Admin
      # Reseller module for admin/reseller endpoints
      module Reseller
        # Requests reseller usage report
        #
        # TODO: Add parameters documentation
        def reseller_mention_usage_report(opts = {})
          get '/admin/reseller/requestMentionUsageReport', opts
        end

        # Requests reseller client usage report
        #
        # TODO: Add parameters documentation
        def reseller_client_mention_usage_report(client_id, opts = {})
          get "/admin/reseller/requestMentionUsageReport/#{client_id}", opts
        end

        # Requests reseller usage summaries
        #
        # TODO: Add parameters documentation
        def reseller_usage_summary
          get '/admin/reseller/usageSummary'
        end

        # Requests reseller usage summaries for a specific client
        #
        # TODO: Add parameters documentation
        def reseller_client_usage_summary(client_id)
          get "/admin/reseller/usageSummary/#{client_id}"
        end
      end
    end
  end
end
