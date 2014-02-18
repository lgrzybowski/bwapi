require 'bwapi/client/command_center/displays'

module BWAPI
  class Client
    # CommandCenter module for commandcenter endpoints
    module CommandCenter

      include BWAPI::Client::CommandCenter::Displays

    end
  end
end