require 'faraday'

module BWAPI
  module Configuration

    OPTION_KEYS = [
      :api_endpoint,
      :adapter,
      :username,
      :password,
      :grant_type,
      :access_token,
      :client_id,
      :client_secret
    ].freeze

    DEFAULT_ADAPTER       = Faraday.default_adapter
    DEFAULT_API_ENDPOINT  = 'http://newapi.rel.brandwatch.com/'
    DEFAULT_GRANT_TYPE    = 'password'
    DEFAULT_CLIENT_ID     = 'brandwatch-api-client'

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
      self.grant_type          = DEFAULT_GRANT_TYPE
      self.access_token        = nil
      self.client_id           = DEFAULT_CLIENT_ID
      self.client_secret       = nil
    end

  end
end