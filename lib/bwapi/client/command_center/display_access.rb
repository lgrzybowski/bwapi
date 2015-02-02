require 'bwapi/client/command_center/display_access/users'

module BWAPI
  class Client
    module CommandCenter
      # DisplayAccess module for commandcenter/displayaccess endpoints
      module DisplayAccess
        include BWAPI::Client::CommandCenter::DisplayAccess::Users
      end
    end
  end
end
