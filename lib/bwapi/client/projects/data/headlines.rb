module BWAPI
  class Client
    module Projects
      module Data
        # Headlines module for projects/data/headlines endpoints
        module Headlines
          # Get mention headlines that fall within the submitted filters
          #
          # @param project_id [Integer] Id of project
          # @param opts [Hash] options hash of parameters
          # @option opts [Hash] filter The filters to apply
          # @return [Hash] All Mention headlines
          def data_headlines(project_id, opts = {})
            get "projects/#{project_id}/data/headlines", opts
          end
        end
      end
    end
  end
end
