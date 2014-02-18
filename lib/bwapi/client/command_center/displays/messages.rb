module BWAPI
  class Client
    module CommandCenter
      module Displays
        # Displays module for commandcenter/displays/messages endpoints
        module Messages

          # Get the messages for an existing display
          #
          # @param [Integer] display_id The display id
          # @return [Hashie::Mash] All messages for display
          def messages display_id
            get "commandcenter/displays/#{display_id}/messages"
          end

          # Get an existing display message
          #
          # @param [Integer] display_id The display id
          # @param [Integer] message_id The message id
          # @return [Hashie::Mash] Specific message for display
          def get_message display_id, message_id
            get "commandcenter/displays/#{display_id}/messages/#{message_id}"
          end

          # Create a new display message
          #
          # @param [Integer] display_id The display id
          # @param opts [Hash] options hash of parameters
          # @option opts [Integer] id The id of message
          # @option opts [String] title The message title
          # @option opts [String] type The message type
          # @option opts [String] content The message content
          # @option opts [Integer] duration The message duration
          # @option opts [Boolean] active Whether message is active
          # @option opts [Boolean] enabled Whether message is enabled
          # @option opts [Array] screenIds ScreenIds where message is shown
          # @return [Hashie::Mash] New display message
          def create_message display_id, opts={}
            post "commandcenter/displays/#{display_id}/message", opts
          end

          # Update an existing display message
          #
          # @param [Integer] display_id The display id
          # @param opts [Hash] options hash of parameters
          # @option opts [Integer] id The id of message
          # @option opts [String] title The message title
          # @option opts [String] type The message type
          # @option opts [String] content The message content
          # @option opts [Integer] duration The message duration
          # @option opts [Boolean] active Whether message is active
          # @option opts [Boolean] enabled Whether message is enabled
          # @option opts [Array] screenIds ScreenIds where message is shown
          # @return [Hashie::Mash] Updated display message
          def update_message display_id, message_id, opts={}
            put "commandcenter/displays/#{display_id}/messages/#{message_id}", opts
          end

          # Delete an existing display message
          #
          # @param [Integer] display_id The display id
          # @param [Integer] message_id The message id
          # @return [Hashie::Mash] Deleted display message
          def delete_message display_id, message_id
            delete "commandcenter/displays/#{display_id}/messages/#{message_id}"
          end

      end
    end
  end
end