module BWAPI
  class Client
    module CommandCenter
      module Projects
        # CategoryColours module for commandcenter/projects/{project_id}/categoryColours endpoints
        module CategoryColours
          # Get colours defined for categories in given project
          #
          # TODO: Add parameters documentation
          def category_colours(project_id)
            get "/commandcenter/projects/#{project_id}/categoryColours"
          end

          # Get colour defined for given category
          #
          # TODO: Add parameters documentation
          def category_colour(project_id, category_id)
            get "/commandcenter/projects/#{project_id}/categoryColours/#{category_id}"
          end

          # Define the colour for a category
          #
          # TODO: Add parameters documentation
          def create_category_colour(project_id, opts = {})
            post "/commandcenter/projects/#{project_id}/categoryColours", opts
          end

          # Update the colour for a category
          #
          # TODO: Add parameters documentation
          def update_category_colour(project_id, category_id, opts = {})
            put "/commandcenter/projects/#{project_id}/categoryColours/#{category_id}", opts
          end

          # Remove the colour for a category
          #
          # TODO: Add parameters documentation
          def delete_category_colour(project_id, category_id)
            delete "/commandcenter/projects/#{project_id}/categoryColours/#{category_id}"
          end
        end
      end
    end
  end
end
