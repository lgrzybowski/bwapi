require 'faraday'

module BWAPI
  module Configuration

    OPTION_KEYS = [
      :api_endpoint,
      :user_agent,
      :adapter,
      :username,
      :password,
      :grant_type,
      :access_token,
      :refresh_token,
      :expires_in,
      :client_id,
      :client_secret,
      :verify_ssl,
      :netrc,
      :netrc_file
    ].freeze

    DEFAULT_ADAPTER       = Faraday.default_adapter
    DEFAULT_API_ENDPOINT  = ENV['BWAPI_API_ENDPOINT'] || 'https://newapi.brandwatch.com/'
    DEFAULT_CLIENT_ID     = 'brandwatch-api-client'
    DEFAULT_USER_AGENT    = "BWAPI Ruby Gem #{BWAPI::VERSION}".freeze
    DEFAULT_NETRC_FILE    = File.join(ENV['HOME'], '.netrc')

    attr_accessor *OPTION_KEYS

    # Extend hook
    def self.extended(base)
      base.reset
    end

    # Set configuration options using a block
    def configure
      yield self
    end

    # Convert option_keys to hash and return
    def options
      OPTION_KEYS.inject({}){|o,k|o.merge!(k => send(k))}
    end

    # Reset the configuration options
    def reset
      self.adapter             = DEFAULT_ADAPTER
      self.user_agent          = DEFAULT_USER_AGENT
      self.api_endpoint        = DEFAULT_API_ENDPOINT
      self.username            = nil
      self.password            = nil
      self.grant_type          = nil
      self.access_token        = nil
      self.refresh_token       = nil
      self.client_id           = DEFAULT_CLIENT_ID
      self.client_secret       = nil
      self.verify_ssl          = true
      self.netrc               = false
      self.netrc_file          = DEFAULT_NETRC_FILE
    end
  end
end