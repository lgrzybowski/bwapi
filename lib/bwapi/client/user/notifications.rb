module BWAPI
  class Client
    module User
      # Notifications module for projects/notifications endpoints
      module Notifications
        # Post a new user notification
        #
        # @param opts [Hash] options hash of parameters
        # @option opts [Boolean] hidden if the notification is hidden from users
        # @option opts [Boolean] read if the notification has been read
        # @option opts [String] body the body text of the notification
        # @option opts [String] subject the subject text of the notification
        # @option opts [String] type the type of notification
        # @return [Hashie::Mash] new user notification
        def create_notification(opts = {})
          post 'user/notifications', opts
        end

        # Get the current user notifications
        #
        # @param opts [Hash] options hash of parameters
        # @option opts [Integer] page Page of projects to retrieve
        # @option opts [Integer] pageSize Results per page of results
        # @return [Hashie::Mash] user notifications
        def notifications(opts = {})
          get 'user/notifications', opts
        end

        # Update users existing notification
        #
        # @param notification_id [Integer] Id of notification
        # @param opts [Hash] options hash of parameters
        # @option opts [Boolean] hidden if the notification is hidden from users
        # @option opts [Boolean] read if the notification has been read
        # @option opts [String] body the body text of the notification
        # @option opts [String] subject the subject text of the notification
        # @option opts [String] type the type of notification
        # @return [Hashie::Mash] edited user notification
        def update_notification(notification_id, opts = {})
          put "user/notifications/#{notification_id}", opts
        end

        # Patch a users existing notification
        #
        # @param notification_id [Integer] Id of notification
        # @param opts [Hash] options Hash of parameters
        # @option opts [Boolean] read if the notification has been read
        # @return [Hashie::Mash] patched user notifications
        def patch_notification(notification_id, opts = {})
          patch "user/notifications/#{notification_id}", opts
        end
      end
    end
  end
end
