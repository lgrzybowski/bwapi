require 'bwapi/client/admin/become'
require 'bwapi/client/admin/search'
require 'bwapi/client/admin/clients/sub_clients'
require 'bwapi/client/admin/clients/users'
require 'bwapi/client/admin/clients/user_groups'

module BWAPI
  class Client
    # Admin module for admin endpoints
    module Admin
      # Get the active queries irrespective of project
      #
      # @param opts [Hash] options hash of parameters
      # @option opts [Integer] page Page of projects to retrieve
      # @option opts [Integer] pageSize Results per page of results
      # @option opts [Integer] sortBy Filter to sort queries by
      # @return [Hash] All active queries
      def active_queries(opts = {})
        get 'admin/activequeries', opts
      end

      # Get the project report of sharing details
      #
      # @return [Hash] Project sharing report
      def sharing_report
        get 'admin/sharing-report'
      end

      include BWAPI::Client::Admin::Become
      include BWAPI::Client::Admin::Search
      include BWAPI::Client::Admin::Clients::SubClients
      include BWAPI::Client::Admin::Clients::Users
      include BWAPI::Client::Admin::Clients::UserGroups
    end
  end
end
