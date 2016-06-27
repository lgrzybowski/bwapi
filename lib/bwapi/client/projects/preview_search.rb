module BWAPI
  class Client
    module Projects
      # PreviewSearch module for projects/{projectId}/previewsearch endpoints
      module PreviewSearch
        # Create a project preview search for mentions
        #
        # TODO: Add parameters documentation
        def project_preview_search_mentions(project_id, opts = {})
          post "/projects/#{project_id}/previewsearch/mentions", opts
        end

        # Create a project preview search for author
        #
        # TODO: Add parameters documentation
        def project_preview_search_author(project_id, opts = {})
          post "/projects/#{project_id}/previewsearch/author", opts
        end

        # Create a project preview search for daily mentions
        #
        # TODO: Add parameters documentation
        def project_preview_search_dailymentions(project_id, opts = {})
          post "/projects/#{project_id}/previewsearch/dailymentions", opts
        end

        # Create a project preview search for history
        #
        # TODO: Add parameters documentation
        def project_preview_search_history(project_id, opts = {})
          post "/projects/#{project_id}/previewsearch/history", opts
        end

        # Create a project preview search for site
        #
        # TODO: Add parameters documentation
        def project_preview_search_site(project_id, opts = {})
          post "/projects/#{project_id}/previewsearch/site", opts
        end

        # Create a project preview search for top authors
        #
        # TODO: Add parameters documentation
        def project_preview_search_topauthors(project_id, opts = {})
          post "/projects/#{project_id}/previewsearch/topauthors", opts
        end

        # Create a project preview search for topic
        #
        # TODO: Add parameters documentation
        def project_preview_search_topic(project_id, opts = {})
          post "/projects/#{project_id}/previewsearch/topic", opts
        end

        # Create a project preview search for topics
        #
        # TODO: Add parameters documentation
        def project_preview_search_topics(project_id, opts = {})
          post "/projects/#{project_id}/previewsearch/topics", opts
        end

        # Create a project preview search for top sites
        #
        # TODO: Add parameters documentation
        def project_preview_search_topsites(project_id, opts = {})
          post "/projects/#{project_id}/previewsearch/topsites", opts
        end
      end
    end
  end
end
