require 'bwapi/client/admin/clients/sub_clients'
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

        include BWAPI::Client::Admin::Clients::SubClients
        include BWAPI::Client::Admin::Clients::Users
        include BWAPI::Client::Admin::Clients::UserGroups
      end
    end
  end
end
