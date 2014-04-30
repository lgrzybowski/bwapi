module BWAPI
  class Client
    module User
      # Notifications module for projects/notifications endpoints
      module Notifications
        # Get the current user notifications
        #
        # @param opts [Hash] options hash of parameters
        # @option opts [Integer] page Page of projects to retrieve
        # @option opts [Integer] pageSize Results per page of results
        # @return [Hashie::Mash] User notifications
        def notifications(opts = {})
          get 'user/notifications', opts
        end

        # Update users existing notifications
        #
        # @param opts [Hash] options Hash of parameters
        # @option opts [Array] list User notifications to be edited
        # @return [Hashie::Mash] Updated user notifications
        def update_notification(opts = {})
          put 'user/notifications', opts
        end

        # Delete a users existing notification
        #
        # @param notification_id [Integer] Id of notification
        # @return [Hashie::Mash] Deleted user notifications
        def delete_notification(notification_id)
          delete "user/notifications/#{notification_id}"
        end
      end
    end
  end
end
