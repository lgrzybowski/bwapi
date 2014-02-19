require 'bwapi/client/command_center/displays'
require 'bwapi/client/command_center/scene_types'
require 'bwapi/client/command_center/users'

module BWAPI
  class Client
    # CommandCenter module for commandcenter endpoints
    module CommandCenter

      include BWAPI::Client::CommandCenter::Displays
      include BWAPI::Client::CommandCenter::SceneTypes
      include BWAPI::Client::CommandCenter::Users

    end
  end
end