require 'bwapi/client/command_center/projects/category_colours'
require 'bwapi/client/command_center/projects/data'
require 'bwapi/client/command_center/projects/tag_colours'

module BWAPI
  class Client
    module CommandCenter
      # Projects module for commandcenter/projects endpoints
      module Projects
        include BWAPI::Client::CommandCenter::Projects::CategoryColours
        include BWAPI::Client::CommandCenter::Projects::Data
        include BWAPI::Client::CommandCenter::Projects::TagColours
      end
    end
  end
end
