require 'bwapi/authentication'
require 'bwapi/connection'
require 'bwapi/request'

require 'bwapi/client/admin'
require 'bwapi/client/brandwatch'
require 'bwapi/client/client'
require 'bwapi/client/command_center'
require 'bwapi/client/error_codes'
require 'bwapi/client/filters'
require 'bwapi/client/languages'
require 'bwapi/client/location'
require 'bwapi/client/logout'
require 'bwapi/client/me'
require 'bwapi/client/metrics'
require 'bwapi/client/oauth'
require 'bwapi/client/ping'
require 'bwapi/client/sso'
require 'bwapi/client/projects'
require 'bwapi/client/query_validation'
require 'bwapi/client/test_search'
require 'bwapi/client/user'

module BWAPI
  # Client class to create BWAPI instances
  class Client

    attr_accessor *Configuration::OPTION_KEYS

    def initialize opts={}
      opts = BWAPI.options.merge opts
      Configuration::OPTION_KEYS.each do |k|
        send "#{k}=", opts[k]
      end

      netrc_credentials opts[:netrc]
    end

    include BWAPI::Authentication
    include BWAPI::Connection
    include BWAPI::Request

    include BWAPI::Client::Admin
    include BWAPI::Client::Brandwatch
    include BWAPI::Client::Client
    include BWAPI::Client::CommandCenter
    include BWAPI::Client::ErrorCodes
    include BWAPI::Client::Filters
    include BWAPI::Client::Languages
    include BWAPI::Client::Location
    include BWAPI::Client::Logout
    include BWAPI::Client::Me
    include BWAPI::Client::Metrics
    include BWAPI::Client::OAuth
    include BWAPI::Client::Ping
    include BWAPI::Client::Projects
    include BWAPI::Client::SSO
    include BWAPI::Client::QueryValidation
    include BWAPI::Client::TestSearch
    include BWAPI::Client::User
  end
end