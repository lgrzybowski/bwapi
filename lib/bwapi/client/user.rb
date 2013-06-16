require 'bwapi/client/user/notifications'

module BWAPI
  class Client
    module User

      # Get the current user
      #
      # @return [Hashie::Mash] User information
      def user
        get "user"
      end

      # Update the current user
      #
      # @param opts [Hash] options Hash of parameters
      # @option opts [Integer] id Id of the user
      # @option opts [Hash] tags The users assigned tags
      # @option opts [String] passwordConfirmation The confirmed password
      # @option opts [Boolean] enabled The status of the user
      # @option opts [String] lastName The last name of the user
      # @option opts [String] phone The users phone number
      # @option opts [String] department The users department
      # @option opts [String] job The users job
      # @option opts [String] messenger The users IM details
      # @option opts [String] password The password of the user
      # @option opts [Integer] clientId The users client id
      # @option opts [String] username The users username
      # @option opts [String] address The users address
      # @option opts [String] uiRole The users ui role
      # @option opts [Array] apiRole The users api role
      # @option opts [String] firstName The users first name
      # @option opts [String] mobile The users mobile number
      # @option opts [Date] creationDate Date the user was created on
      # @return [Hashie::Mash] Updated user information
      def update_user opts
        put "user", opts
      end

      # Get users api role
      #
      # @return [String] Users api role
      def api_role
        user.apiRole
      end

      # Get users ui role
      #
      # @return [String] Users ui role
      def ui_role
        user.uiRole
      end

      include BWAPI::Client::User::Notifications

    end
  end
end