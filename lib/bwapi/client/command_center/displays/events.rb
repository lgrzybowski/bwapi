# encoding: utf-8

module BWAPI
  class Client
    module CommandCenter
      module Displays
        # Displays module for commandcenter/displays/events endpoints
        module Events
          # Get the events for an existing display
          #
          # @param [Integer] display_id The display id
          # @return [Hashie::Mash] All events for display
          def events(display_id)
            get "commandcenter/displays/#{display_id}/events"
          end

          # Get an existing display event
          #
          # @param [Integer] display_id The display id
          # @param [Integer] event_id The event id
          # @return [Hashie::Mash] Specific event for display
          def get_event(display_id, event_id)
            get "commandcenter/displays/#{display_id}/events/#{event_id}"
          end

          # Create a new display event
          #
          # @param [Integer] display_id The display id
          # @param opts [Hash] options hash of parameters
          # @option opts [Integer] id The event id
          # @option opts [String] name The event name
          # @option opts [String] description The event description
          # @option opts [Integer] displayId The display id
          # @option opts [Boolean] matched Events rules matched
          # @option opts [Integer] queryId Reference query id
          # @option opts [Integer] threshold Event mention volume threshold
          # @option opts [Hash] action Event action
          # @option opts [String] created Date event created
          # @option opts [Boolean] enabled Whether event is enabled
          # @option opts [Hash] filters Event filter options
          # @return [Hashie::Mash] New display event
          def create_event(display_id, opts = {})
            post "commandcenter/displays/#{display_id}/events", opts
          end

          # Update an existing display event
          #
          # @param [Integer] display_id The display id
          # @param opts [Hash] options hash of parameters
          # @option opts [Integer] id The event id
          # @option opts [String] name The event name
          # @option opts [String] description The event description
          # @option opts [Integer] displayId The display id
          # @option opts [Boolean] matched Events rules matched
          # @option opts [Integer] queryId Reference query id
          # @option opts [Integer] threshold Event mention volume threshold
          # @option opts [Hash] action Event action
          # @option opts [String] created Date event created
          # @option opts [Boolean] enabled Whether event is enabled
          # @option opts [Hash] filters Event filter options
          # @return [Hashie::Mash] Updated display event
          def update_event(display_id, event_id, opts = {})
            put "commandcenter/displays/#{display_id}/events/#{event_id}", opts
          end

          # Delete an existing display event
          #
          # @param [Integer] display_id The display id
          # @param [Integer] event_id The event id
          # @return [Hashie::Mash] Deleted display event
          def delete_event(display_id, event_id)
            delete "commandcenter/displays/#{display_id}/events/#{event_id}"
          end
        end
      end
    end
  end
end
