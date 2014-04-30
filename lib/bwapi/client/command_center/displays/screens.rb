# encoding: utf-8

module BWAPI
  class Client
    module CommandCenter
      module Displays
        # Displays module for commandcenter/displays/screens endpoints
        module Screens
          # Get the screens for a display
          #
          # @param [Integer] display_id The display id
          # @return [Hashie::Mash] All screens for display
          def screens(display_id)
            get "commandcenter/displays/#{display_id}/screens"
          end

          # Get an existing display screen
          #
          # @param [Integer] display_id The display id
          # @param [Integer] screen_id The screen id
          # @return [Hashie::Mash] Specific screen for display
          def get_screen(display_id, screen_id)
            get "commandcenter/displays/#{display_id}/screens/#{screen_id}"
          end

          # Get an existing display screen with scenes
          #
          # @param [Integer] display_id The display id
          # @param [Integer] screen_id The screen id
          # @return [Hashie::Mash] Specific screen for display with scenes
          def get_screen_with_scenes(display_id, screen_id)
            get "commandcenter/displays/#{display_id}/screens/#{screen_id}/withscenes"
          end

          # Create a new display screen
          #
          # @param [Integer] display_id The display id
          # @param opts [Hash] options hash of parameters
          # @option opts [Integer] id The id of screen
          # @option opts [String] name The name of the screen
          # @option opts [Integer] displayId The display id
          # @option opts [Hash] options Display options
          # @option opts [Array] screenIds Screen ids used to display
          # @option opts [String] created Date screen was created
          # @option opts [Boolean] enabled Whether screen is enabled
          # @return [Hashie::Mash] New display screen
          def create_screen(display_id, opts = {})
            post "commandcenter/displays/#{display_id}/screens", opts
          end

          # Update an existing display screen
          #
          # @param [Integer] display_id The display id
          # @param opts [Hash] options hash of parameters
          # @option opts [Integer] id The id of screen
          # @option opts [String] name The name of the screen
          # @option opts [Integer] displayId The display id
          # @option opts [Hash] options Display options
          # @option opts [Array] screenIds Screen ids used to display
          # @option opts [String] created Date screen was created
          # @option opts [Boolean] enabled Whether screen is enabled
          # @return [Hashie::Mash] Updated display screen
          def update_screen(display_id, screen_id, opts = {})
            put "commandcenter/displays/#{display_id}/screens/#{screen_id}", opts
          end

          # Delete an existing display screen
          #
          # @param [Integer] display_id The display id
          # @param [Integer] screen_id The screen id
          # @return [Hashie::Mash] Deleted display screen
          def delete_screen(display_id, screen_id)
            delete "commandcenter/displays/#{display_id}/screens/#{screen_id}"
          end
        end
      end
    end
  end
end
