module BWAPI
  class Client
    module Projects
      # PreviewSearch module for projects/{projectId}/previewsearch endpoints
      module PreviewSearch
        # Create a project preview search for mentions
        #
        # TODO: Add parameters documentation
        def project_preview_search_mentions(project_id)
          post "/projects/#{project_id}/previewsearch/mentions"
        end
      end
    end
  end
end
