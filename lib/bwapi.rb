require 'pry'

require 'brandwatch/configuration'
require 'brandwatch/client'

module Brandwatch
  extend Configuration
  class << self

    def new opts={}
      Brandwatch::Client.new(opts)
    end

  end
end