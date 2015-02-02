module BWAPI
  class Client
    module Brandwatch
      module CommandCenter
        # SceneTypes module for brandwatch/commandcenter/scenetypes endpoints
        module SceneTypes
          # Fetch all supported parent scene types
          #
          # TODO: Add parameters documentation
          def brandwatch_all_scene_types
            get 'brandwatch/commandcenter/scenetypes'
          end

          # Fetch a scene type
          #
          # TODO: Add parameters documentation
          def brandwatch_scene_type(scene_type_id)
            get "brandwatch/commandcenter/scenetypes/#{scene_type_id}"
          end

          # Fetch all sub scene types for a scene type
          #
          # TODO: Add parameters documentation
          def brandwatch_scene_type_with_sub_scenes(scene_type_id)
            get "brandwatch/commandcenter/scenetypes/#{scene_type_id}/subscenes"
          end
        end
      end
    end
  end
end
