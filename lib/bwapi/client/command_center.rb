# encoding: utf-8

require 'bwapi/client/command_center/client'
require 'bwapi/client/command_center/displays'
require 'bwapi/client/command_center/scene_types'
require 'bwapi/client/command_center/themes'
require 'bwapi/client/command_center/users'

module BWAPI
  class Client
    # CommandCenter module for commandcenter endpoints
    module CommandCenter
      include BWAPI::Client::CommandCenter::Client
      include BWAPI::Client::CommandCenter::Displays
      include BWAPI::Client::CommandCenter::SceneTypes
      include BWAPI::Client::CommandCenter::Themes
      include BWAPI::Client::CommandCenter::Users
    end
  end
end
