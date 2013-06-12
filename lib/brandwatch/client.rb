require_relative 'brandwatch/connection'

module Brandwatch
  class Client

    attr_accessor *Configuration::OPTION_KEYS

    def initialize opts={}
      # Merge options password
      opts = Brandwatch.options.merge opts

      # Create instance variables
      Configuration::OPTION_KEYS.each do |k|
        send "#{k}=", opts[k]
      end
    end

  end
end