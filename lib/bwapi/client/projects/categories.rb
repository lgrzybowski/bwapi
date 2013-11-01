module BWAPI
  class Client
    module Projects
      # Categories module for projects/categories endpoints
      module Categories

        # Get all categories in project
        #
        # @param project_id [Integer] Id of project
        # @param opts [Hash] options hash of parameters
        # @option opts [Integer] page Page of projects to retrieve
        # @option opts [Integer] pageSize Results per page of results
        # @return [Hashie::Mash] All categories in project
        def categories project_id, opts={}
          get "projects/#{project_id}/categories", opts
        end

        # TODO: Uncomment this code when endpoint is created
        #
        # Get a specific category in project
        #
        # @param project_id [Integer] Id of project
        # @param category_id [Integer] Id of category
        # @return [Hashie::Mash] Specific category
        #def get_category project_id, category_id
        #  get "projects/#{project_id}/categories/#{category_id}", opts
        #end
        #alias :category :get_category

        # Create a new category in project
        #
        # @param project_id [Integer] Id of project
        # @param opts [Hash] options hash of parameters
        # @option opts [Integer] id Id of the category
        # @option opts [String] name Name of the category
        # @option opts [Array] children The children of the category
        # @option opts [Boolean] multiple Whether multiple sub categories can be selected
        # @return [Hashie::Mash] New category
        def create_category project_id, opts={}
          post "projects/#{project_id}/categories", opts
        end

        # Update an existing category in project
        #
        # @param project_id [Integer] Id of project
        # @param category_id [Integer] Id of category
        # @param opts [Hash] options hash of parameters
        # @option opts [Integer] projectId Id of the project
        # @option opts [Integer] id Id of the category
        # @option opts [String] name Name of the category
        # @option opts [Array] children The children of the category
        # @option opts [Boolean] multiple Whether multiple sub categories can be selected
        # @return [Hashie::Mash] Updated category
        def update_category project_id, category_id, opts={}
          put "projects/#{project_id}/categories/#{category_id}", opts
        end


        # Delete and existing category in project
        #
        # @param project_id [Integer] Id of project
        # @param category_id [Integer] Id of query group
        # @return [Hashie::Mash] Deleted category
        def delete_category project_id, category_id
          delete "projects/#{project_id}/categories/#{category_id}"
        end

      end
    end
  end
end