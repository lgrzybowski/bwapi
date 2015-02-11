module BWAPI
  class Client
    module CommandCenter
      module Projects
        # TagColours module for commandcenter/projects/{project_id}/tagColours endpoints
        module TagColours
          # Get colours defined for tags in given project
          #
          # TODO: Add parameters documentation
          def tag_colours(project_id)
            get "/commandcenter/projects/#{project_id}/tagColours"
          end

          # Get colour defined for given tag
          #
          # TODO: Add parameters documentation
          def tag_colour(project_id, tag_name)
            get "/commandcenter/projects/#{project_id}/tagColours/#{tag_name}"
          end

          # Define the colour for a tag
          #
          # TODO: Add parameters documentation
          def create_tag_colour(project_id, opts = {})
            post "/commandcenter/projects/#{project_id}/tagColours", opts
          end

          # Update the colour for a tag
          #
          # TODO: Add parameters documentation
          def update_tag_colour(project_id, tag_name, opts = {})
            put "/commandcenter/projects/#{project_id}/tagColours/#{tag_name}", opts
          end

          # Remove the colour for a tag
          #
          # TODO: Add parameters documentation
          def delete_tag_colour(project_id, tag_name)
            delete "/commandcenter/projects/#{project_id}/tagColours/#{tag_name}"
          end
        end
      end
    end
  end
end
