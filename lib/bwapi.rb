require 'bwapi/client'
require 'bwapi/configuration'
require 'bwapi/error'
require 'bwapi/version'

module BWAPI
  extend Configuration
  class << self

    def new opts={}
      BWAPI::Client.new opts
    end

  end
end