require 'faraday'

module Brandwatch
  module Configuration

    OPTION_KEYS = [
      :username,
      :password,
      :grant,
      :access_token,
      :refresh_token,
      :client_id,
      :client_secret,
      :api_endpoint
    ].freeze

    DEFAULT_ADAPTER       = Faraday.default_adapter
    DEFAULT_API_ENDPOINT  = 'https://newapi.brandwatch.com/'

    attr_accessor *OPTION_KEYS

    # Extend hook
    def self.extended(base)
      base.reset
    end

    def configure
      yield self
    end

    # Convert option_keys to hash and return
    def options
      OPTION_KEYS.inject({}){|o,k|o.merge!(k => send(k))}
    end

    def reset
      self.adapter             = DEFAULT_ADAPTER
      self.api_endpoint        = DEFAULT_API_ENDPOINT
      self.username            = nil
      self.password            = nil
      self.access_token        = nil
      self.refresh_token       = nil
      self.client_id           = nil
      self.client_secret       = nil
    end

  end
end