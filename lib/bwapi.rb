require 'netrc'
require 'bwapi/version'
require 'bwapi/configuration'
require 'bwapi/error'
require 'bwapi/client'

module BWAPI
  extend Configuration
  class << self

    def new opts={}
      BWAPI::Client.new opts
    end

  end
end