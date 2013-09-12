require 'bwapi/client/admin/become'
require 'bwapi/client/admin/search'
require 'bwapi/client/admin/sub_clients'
require 'bwapi/client/admin/users'

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
      # @return [Hashie::Mash] All active queries
      def active_queries opts={}
        get "admin/activequeries", opts
      end

      # Get the project report of sharing details
      #
      # @return [Hashie::Mash] Project sharing report
      def sharing_report
        get "admin/sharing-report"
      end

      include BWAPI::Client::Admin::Clients::Become
      include BWAPI::Client::Admin::Clients::SubClients
      include BWAPI::Client::Admin::Clients::Search
      include BWAPI::Client::Admin::Clients::Users

    end
  end
end