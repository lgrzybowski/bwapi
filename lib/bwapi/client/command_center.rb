require 'bwapi/client/command_center/category_colours'
require 'bwapi/client/command_center/client'
require 'bwapi/client/command_center/colour_palette'
require 'bwapi/client/command_center/display_access'
require 'bwapi/client/command_center/displays'
require 'bwapi/client/command_center/projects'
require 'bwapi/client/command_center/query_colours'
require 'bwapi/client/command_center/scene_types'
require 'bwapi/client/command_center/tag_colours'
require 'bwapi/client/command_center/themes'
require 'bwapi/client/command_center/users'

module BWAPI
  class Client
    # CommandCenter module for commandcenter endpoints
    module CommandCenter
      include BWAPI::Client::CommandCenter::CategoryColours
      include BWAPI::Client::CommandCenter::Client
      include BWAPI::Client::CommandCenter::ColourPalette
      include BWAPI::Client::CommandCenter::DisplayAccess
      include BWAPI::Client::CommandCenter::Displays
      include BWAPI::Client::CommandCenter::Projects
      include BWAPI::Client::CommandCenter::QueryColours
      include BWAPI::Client::CommandCenter::SceneTypes
      include BWAPI::Client::CommandCenter::TagColours
      include BWAPI::Client::CommandCenter::Themes
      include BWAPI::Client::CommandCenter::Users
    end
  end
end
