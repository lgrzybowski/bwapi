require 'bwapi/client/brandwatch/command_center/scene_types'
require 'bwapi/client/brandwatch/command_center/themes'

module BWAPI
  class Client
    module Brandwatch
      # CommandCenter module for brandwatch/commandcenter endpoints
      module CommandCenter
        include BWAPI::Client::Brandwatch::CommandCenter::SceneTypes
        include BWAPI::Client::Brandwatch::CommandCenter::Themes
      end
    end
  end
end
