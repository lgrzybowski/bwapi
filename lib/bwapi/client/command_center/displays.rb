require 'bwapi/client/command_center/displays/events'
require 'bwapi/client/command_center/displays/messages'
require 'bwapi/client/command_center/displays/scenes'
require 'bwapi/client/command_center/displays/screens'
require 'bwapi/client/command_center/displays/users'

module BWAPI
  class Client
    module CommandCenter
      # Displays module for commandcenter/displays endpoints
      module Displays
        # Get the displays visible to the user
        #
        # @return [Hashie::Mash] All displays
        def displays
          get 'commandcenter/displays'
        end

        # Get an existing display
        #
        # @param [Integer] display_id the display id
        # @return [Hashie::Mash] Specific display
        def get_display(display_id)
          get "commandcenter/displays/#{display_id}"
        end

        # Create a new display
        #
        # @param opts [Hash] options hash of parameters
        # @option opts [Integer] id The id of display
        # @option opts [String] name The name of the display
        # @option opts [Hash] options Display options
        # @option opts [Array] screenIds Screen ids used to display
        # @option opts [Boolean] active Whether display is active
        # @option opts [String] created Date display was created
        # @option opts [Boolean] enabled Whether display is enabled
        # @return [Hashie::Mash] New display
        def create_display(opts = {})
          post 'commandcenter/displays', opts
        end

        # Update an existing display
        #
        # @param [Integer] display_id the display id
        # @param opts [Hash] options hash of parameters
        # @option opts [Integer] id The id of display
        # @option opts [String] name The name of the display
        # @option opts [Hash] options Display options
        # @option opts [Array] screenIds Screen ids used to display
        # @option opts [Boolean] active Whether display is active
        # @option opts [String] created Date display was created
        # @option opts [Boolean] enabled Whether display is enabled
        # @return [Hashie::Mash] Updated display
        def update_display(display_id, opts = {})
          put "commandcenter/displays/#{display_id}", opts
        end

        # Delete an existing display
        #
        # @param [Integer] display_id the display id
        # @return [Hashie::Mash] Deleted display
        def delete_display(display_id)
          delete "commandcenter/displays/#{display_id}"
        end

        include BWAPI::Client::CommandCenter::Displays::Events
        include BWAPI::Client::CommandCenter::Displays::Messages
        include BWAPI::Client::CommandCenter::Displays::Scenes
        include BWAPI::Client::CommandCenter::Displays::Screens
        include BWAPI::Client::CommandCenter::Displays::Users
      end
    end
  end
end
