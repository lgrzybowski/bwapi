module BWAPI
  class Client
    module Projects
      module Data
        # Urls module for the /projects/{project_id}/data/urls endpoint
        module Urls
          # Get top n urls
          #
          # @param project_id [Integer] Id of project
          # @param opts [Hash] options hash of parameters
          # @option opts [Hash] filter The filters to apply
          # @option opts [Integer] limit The limit to return
          # @option opts [String] orderBy Parameter to sort by
          # @option opts [String] orderDirection Direction of sort
          # @return [array] top n twitter urls based on parameter passed
          def data_urls(project_id, opts = {})
            get "/projects/#{project_id}/data/urls", opts
          end
        end
      end
    end
  end
end
