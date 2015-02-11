require 'bwapi/client/command_center/display_access/users/access'

module BWAPI
  class Client
    module CommandCenter
      module DisplayAccess
        # Users module for commandcenter/displayaccess/users endpoints
        module Users
          include BWAPI::Client::CommandCenter::DisplayAccess::Users::Access
        end
      end
    end
  end
end
