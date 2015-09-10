require 'bwapi/client/admin/clients/users'
require 'bwapi/client/admin/clients/user_groups'

module BWAPI
  class Client
    module Admin
      # Clients module for admin/clients endpoints
      module Clients
        # Retrieve the login count for users for the given client
        #
        # TODO: Add parameters documentation
        def login_report(client_id, opts = {})
          get "admin/clients/#{client_id}/login-report", opts
        end

        # Retrieve the daily usage for the given client
        #
        # TODO: Add parameters documentation
        def daily_usage(client_id, opts = {})
          get "admin/clients/#{client_id}/usage/daily", opts
        end

        include BWAPI::Client::Admin::Clients::Users
        include BWAPI::Client::Admin::Clients::UserGroups
      end
    end
  end
end
