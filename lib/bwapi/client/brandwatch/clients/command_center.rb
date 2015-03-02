require 'bwapi/client/brandwatch/clients/command_center/limits'
require 'bwapi/client/brandwatch/clients/command_center/scene_types'
require 'bwapi/client/brandwatch/clients/command_center/themes'
require 'bwapi/client/brandwatch/clients/command_center/users'

module BWAPI
  class Client
    module Brandwatch
      module Clients
        # CommandCenter module for brandwatch/clients/{client_id}/commandcenter endpoints
        module CommandCenter
          include BWAPI::Client::Brandwatch::Clients::CommandCenter::Limits
          include BWAPI::Client::Brandwatch::Clients::CommandCenter::SceneTypes
          include BWAPI::Client::Brandwatch::Clients::CommandCenter::Themes
          include BWAPI::Client::Brandwatch::Clients::CommandCenter::Users
        end
      end
    end
  end
end
