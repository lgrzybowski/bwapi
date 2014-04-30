# encoding: utf-8
require 'bwapi/client/projects/group/author_group'
require 'bwapi/client/projects/group/location_group'
require 'bwapi/client/projects/group/site_group'

module BWAPI
  class Client
    module Projects
      # Group module for projects/group endpoint
      module Group
        include BWAPI::Client::Projects::Group::AuthorGroup
        include BWAPI::Client::Projects::Group::LocationGroup
        include BWAPI::Client::Projects::Group::SiteGroup
      end
    end
  end
end
