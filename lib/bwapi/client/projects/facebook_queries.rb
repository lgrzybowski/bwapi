module BWAPI
  class Client
    module Projects
      module FacebookQueries

        # Get all facebook queries in project
        #
        # @param id [Integer] Id of project
        # @return [Hashie::Mash] All facebook queries in project
        def facebook_queries id
          get "projects/#{id}/facebookqueries"
        end

        # Get a specific facebook query in project
        #
        # @param project_id [Integer] Id of project
        # @param query_id [Integer] Id of facebook query
        # @return [Hashie::Mash] Specific facebook query
        def get_facebook_queries project_id, query_id
          get "projects/#{project_id}/facebookqueries/#{query_id}"
        end
        alias :facebook_query :get_facebook_queries

        # Update an existing facebook query in project
        #
        # @param project_id [Integer] Id of project
        # @param query_id [Integer] Id of query
        # @param opts [Hash] options hash of parameters
        # @option opts [Integer] id Id of the query
        # @option opts [Integer] facebookPageId Id of the facebook page
        # @option opts [String] name Name of the project
        # @option opts [String] facebookPageName Name of the facebook page
        # @option opts [String] facebookPageURL URL of the facebook page
        # @option opts [Boolean] facebookCrawlComplete Facebook initial crawling status
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
        def update_facebook_query project_id, query_id, opts={}
          put "projects/#{project_id}/facebookqueries/#{query_id}", opts
        end

      end
    end
  end
end