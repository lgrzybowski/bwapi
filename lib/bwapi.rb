require 'netrc'
require 'bwapi/version'
require 'bwapi/configuration'
require 'bwapi/error'
require 'bwapi/client'

module BWAPI
  extend Configuration
  class << self

    # Alias for BWAPI::Client.new
    #
    # @return [BWAPI::Client]
    def new opts={}
      BWAPI::Client.new opts
    end

    # Delegate to BWAPI::Client.new
    def method_missing method, *args, &block
      return super unless new.respond_to? method
      new.send method, *args, &block
    end

    def respond_to? method, include_private=false
      new.respond_to?(method, include_private) || super(method, include_private)
    end

  end
end