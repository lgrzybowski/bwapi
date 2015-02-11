module BWAPI
  class Client
    module CommandCenter
      # SceneTypes module for commandcenter/scenetypes endpoints
      module SceneTypes
        # Get the scene types visible to the user
        #
        # @return [Hash] All scene types
        def scene_types
          get 'commandcenter/scenetypes'
        end

        # Get an existing scene type
        #
        # @param [Integer] scene_type_id the scene type id
        # @return [Hash] Specific scene type
        def get_scene_type(scene_type_id)
          get "commandcenter/scenetypes/#{scene_type_id}"
        end

        # Get an existing scene type sub scene types
        #
        # @param [Integer] scene_type_id the scene type id
        # @return [Hash] Specific scene type with sub scences
        def get_scene_type_with_sub_scenes(scene_type_id)
          get "commandcenter/scenetypes/#{scene_type_id}/subscenes"
        end
      end
    end
  end
end
