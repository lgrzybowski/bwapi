require 'bwapi/client/projects/queries/backfill'
require 'bwapi/client/projects/queries/date_range'
require 'bwapi/client/projects/queries/mentions'

module BWAPI
  class Client
    module Projects
      module Queries

        # Get all queries in project
        #
        # @param id [Integer] Id of project
        # @return [Hashie::Mash] All queries in project
        def queries id
          get "projects/#{id}/queries"
        end

        # Get summary of all queries in project
        #
        # @param id [Integer] Id of project
        # @return [Hashie::Mash] Summary of all queries in project
        def queries_summary id
          get "projects/#{id}/queries/summary"
        end

        # Get a specific query in project
        #
        # @param project_id [Integer] Id of project
        # @param query_id [Integer] Id of query
        # @return [Hashie::Mash] Specific query
        def get_query project_id, query_id
          get "projects/#{project_id}/queries/#{query_id}"
        end
        alias :query :get_query

        # Create a new query in project
        #
        # @param id [Integer] Id of project
        # @param opts [Hash] options hash of parameters
        # @option opts [String] id Id of the query
        # @option opts [String] name Name of the project
        # @option opts [Integer] dailyLimit Daily limit of the query
        # @option opts [Integer] twitterLimit Twitter limit of the query
        # @option opts [Integer] averageMonthlyMentions Average monthly mentions
        # @option opts [String] type Query type
        # @option opts [Array] includedTerms Included terms of terms query
        # @option opts [Array] contextTerms Content terms of the query
        # @option opts [Array] excludedTerms Excluded terms of thequery
        # @option opts [Array] languages Query languages
        # @option opts [String] twitterScreenName Tracked twitter screen name
        # @option opts [String] industry Industry of the query
        # @option opts [Date] creationDate Date the query was created on
        # @option opts [Date] lastModificationDate Modification date of the query
        # @return [Hashie::Mash] New query
        def create_query id, opts={}
          post "projects/#{id}/queries", opts
        end

        # Update an existing query in project
        #
        # @param project_id [Integer] Id of project
        # @param query_id [Integer] Id of query
        # @param opts [Hash] options hash of parameters
        # @option opts [Integer] id Id of the query
        # @option opts [String] name Name of the project
        # @option opts [Integer] dailyLimit Daily limit of the query
        # @option opts [Integer] twitterLimit Twitter limit of the query
        # @option opts [Integer] averageMonthlyMentions Average monthly mentions
        # @option opts [String] type Query type
        # @option opts [Array] includedTerms Included terms of terms query
        # @option opts [Array] contextTerms Content terms of the query
        # @option opts [Array] excludedTerms Excluded terms of thequery
        # @option opts [Array] languages Query languages
        # @option opts [String] twitterScreenName Tracked twitter screen name
        # @option opts [String] industry Industry of the query
        # @option opts [Date] creationDate Date the query was created on
        # @option opts [Date] lastModificationDate Modification date of the query
        # @return [Hashie::Mash] Updated query
        def update_query project_id, query_id, opts={}
          put "projects/#{project_id}/queries/#{query_id}", opts
        end

        # Delete an existing query project
        #
        # @param project_id [Integer] Id of project
        # @param query_id [Integer] Id of query
        # @return [Hashie::Mash] Deleted query
        def delete_query project_id, query_id
          delete "projects/#{project_id}/queries/#{query_id}"
        end

        include BWAPI::Client::Projects::Queries::Backfill
        include BWAPI::Client::Projects::Queries::DateRange
        include BWAPI::Client::Projects::Queries::Mentions

      end
    end
  end
end