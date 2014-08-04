module BWAPI
  class Client
    module Projects
      module Categories
        # Mentions module for projects/categories/copy endpoints
        module Copy
          # Copy and existing category to another project
          #
          # @param project_id [Integer] Id of project
          # @param category_id [Integer] Id of query group
          # @param opts [Hash] options hash of parameters
          # @option opts [Hash] destinationProjectId target project id for copy
          # @return [Hashie::Mash] Copied category
          def copy_category(project_id, category_id, opts = {})
            post "projects/#{project_id}/categories/#{category_id}/copy", opts
          end
        end
      end
    end
  end
end
