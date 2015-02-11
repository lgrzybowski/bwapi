module BWAPI
  class Client
    module Projects
      module Data
        # Hashtags module for the /projects/{project_id}/data/hashtags endpoint
        module Hashtags
          # Get top n hashtags
          #
          # @param project_id [Integer] Id of project
          # @param opts [Hash] options hash of parameters
          # @option opts [Hash] filter The filters to apply
          # @option opts [Integer] limit The limit to return
          # @option opts [String] orderBy Parameter to sort by
          # @option opts [String] orderDirection Direction of sort
          # @return [array] top n hashtags based on parameter passed
          def data_hashtags(project_id, opts = {})
            get "/projects/#{project_id}/data/hashtags", opts
          end
        end
      end
    end
  end
end
