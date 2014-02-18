module BWAPI
  class Client
    module CommandCenter
      module Displays
        # Displays module for commandcenter/displays/scenes endpoints
        module Scenes

          # Get the scenes for an existing display
          #
          # @param [Integer] display_id The display id
          # @return [Hashie::Mash] All scenes for display
          def scenes display_id
            get "commandcenter/displays/#{display_id}/scenes"
          end

          # Get an existing display scene
          #
          # @param [Integer] display_id The display id
          # @param [Integer] scene_id The scene id
          # @return [Hashie::Mash] Specific scene for display
          def get_scene display_id, scene_id
            get "commandcenter/displays/#{display_id}/scenes/#{scene_id}"
          end

          # Get an existing display scene subscenes
          #
          # @param [Integer] display_id The display id
          # @param [Integer] scene_id The scene id
          # @return [Hashie::Mash] Specific subscenes for display scene
          def get_scene display_id, scene_id
            get "commandcenter/displays/#{display_id}/scenes/#{scene_id}/subscenes"
          end

          # Create a new display scene
          #
          # @param [Integer] display_id The display id
          # @param opts [Hash] options hash of parameters
          # @option opts [Integer] id The id of scene
          # @option opts String] name The name of the scene
          # @option opts [Hash] options Scene options
          # @option opts [Integer] sceneTypeId Scene type id
          # @option opts [Array] subSceneIds Sub Scene ids
          # @option opts [String] created Date scene was created
          # @option opts [Boolean] enabled Whether scene is enabled
          # @option opts [Hash] filter Filter options
          # @return [Hashie::Mash] New display scene
          def create_scene display_id, opts={}
            post "commandcenter/displays/#{display_id}/scenes", opts
          end

          # Update an existing display scene
          #
          # @param [Integer] display_id The display id
          # @param opts [Hash] options hash of parameters
          # @option opts [Integer] id The id of scene
          # @option opts String] name The name of the scene
          # @option opts [Hash] options Scene options
          # @option opts [Integer] sceneTypeId Scene type id
          # @option opts [Array] subSceneIds Sub Scene ids
          # @option opts [String] created Date scene was created
          # @option opts [Boolean] enabled Whether scene is enabled
          # @option opts [Hash] filter Filter options
          # @return [Hashie::Mash] Updated display scene
          def update_scene display_id, scene_id, opts={}
            put "commandcenter/displays/#{display_id}/scenes/#{scene_id}", opts
          end

          # Delete an existing display scene
          #
          # @param [Integer] display_id The display id
          # @param [Integer] scene_id The scene id
          # @return [Hashie::Mash] Deleted display scene
          def delete_scene display_id, scene_id
            delete "commandcenter/displays/#{display_id}/scenes/#{scene_id}"
          end

      end
    end
  end
end