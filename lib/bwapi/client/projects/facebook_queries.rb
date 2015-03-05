module BWAPI
  class Client
    module Projects
      # FacebookQueries module for projects/facebookqueries endpoints
      module FacebookQueries
        # Get all facebook queries in a project
        #
        # @param project_id [Integer] Id of project
        # @return [Hash] All facebook queries in project
        def facebook_queries(project_id)
          get "projects/#{project_id}/facebookqueries"
        end

        # Get a specific facebook query in a project
        #
        # @param project_id [Integer] Id of project
        # @param query_id [Integer] Id of facebook query
        # @return [Hash] Specific facebook query
        def get_facebook_query(project_id, query_id)
          get "projects/#{project_id}/facebookqueries/#{query_id}"
        end

        # Create a facebook query in a project
        #
        # @param project_id [Integer] Id of project
        # @param opts [Hash] options hash of parameters
        # @option opts [Integer] id Id of the query
        # @option opts [String] name Name of the query
        # @option opts [Boolean] authorised Is query authorised
        # @option opts [Integer] averageMonthlyMentions Average monthly mentions
        # @option opts [Array] contextTerms Content terms of the query
        # @option opts [Array] excludedTerms Excluded terms of thequery
        # @option opts [Array] includedTerms Included terms of terms query
        # @option opts [Date] creationDate Date the query was created on
        # @option opts [Integer] dailyLimit Daily limit of the query
        # @option opts [Boolean] facebookCrawlComplete Facebook initial crawling status
        # @option opts [Integer] facebookPageId Id of the facebook page
        # @option opts [String] facebookPageName Name of the facebook page
        # @option opts [Boolean] failed Triggered too many Facebook API request failures
        # @option opts [String] industry Industry of the query
        # @option opts [Array] languages Query languages set
        # @option opts [Date] lastModificationDate Last modification date of the query
        # @option opts [String] type Query type
        # @option opts [String] facebookConsumerKey Facebook consumer key
        # @option opts [String] facebookAccessToken Facebook access token
        # @return [Hash] New facebook query
        def create_facebook_query(project_id, opts = {})
          post "projects/#{project_id}/facebookqueries", opts
        end

        # Authorise facebook queries in a project
        #
        # @param project_id [Integer] Id of project
        # @param opts [Hash] options hash of facebook query oauth dto
        # @option opts [String] accessToken Facebook access token
        # @option opts [String] consumerKey Facebook consumer key
        # @option opts [Array] queryIds Array of query ids
        # @return [Hash] Authorised facebook queries
        def authorise_facebook_queries(project_id, opts = {})
          post "projects/#{project_id}/facebookqueries/authorise", opts
        end

        # Update an existing facebook query in a project
        #
        # @param project_id [Integer] Id of project
        # @param query_id [Integer] Id of query
        # @param opts [Hash] options hash of parameters
        # @option opts [Integer] id Id of the query
        # @option opts [String] name Name of the query
        # @option opts [Boolean] authorised Is query authorised
        # @option opts [Integer] averageMonthlyMentions Average monthly mentions
        # @option opts [Array] contextTerms Content terms of the query
        # @option opts [Array] excludedTerms Excluded terms of thequery
        # @option opts [Array] includedTerms Included terms of terms query
        # @option opts [Date] creationDate Date the query was created on
        # @option opts [Integer] dailyLimit Daily limit of the query
        # @option opts [Boolean] facebookCrawlComplete Facebook initial crawling status
        # @option opts [Integer] facebookPageId Id of the facebook page
        # @option opts [String] facebookPageName Name of the facebook page
        # @option opts [Boolean] failed Triggered too many Facebook API request failures
        # @option opts [String] industry Industry of the query
        # @option opts [Array] languages Query languages set
        # @option opts [Date] lastModificationDate Last modification date of the query
        # @option opts [String] type Query type
        # @option opts [String] facebookConsumerKey Facebook consumer key
        # @option opts [String] facebookAccessToken Facebook access token
        # @return [Hash] Updated facebook query
        def update_facebook_query(project_id, query_id, opts = {})
          put "projects/#{project_id}/facebookqueries/#{query_id}", opts
        end

        # Delete a Facebook query
        #
        # TODO: Add parameters documentation
        def delete_facebook_query(project_id, query_id)
          delete "/projects/#{project_id}/facebookqueries/#{query_id}"
        end
      end
    end
  end
end
