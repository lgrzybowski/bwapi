require 'bwapi/client/projects/data/audience'
require 'bwapi/client/projects/data/audience_activity'
require 'bwapi/client/projects/data/channel_metrics'
require 'bwapi/client/projects/data/emoticons'
require 'bwapi/client/projects/data/hashtags'
require 'bwapi/client/projects/data/headlines'
require 'bwapi/client/projects/data/mentioned_authors'
require 'bwapi/client/projects/data/impressions'
require 'bwapi/client/projects/data/mentions'
require 'bwapi/client/projects/data/owner_activity'
require 'bwapi/client/projects/data/urls'
require 'bwapi/client/projects/data/volume'

module BWAPI
  class Client
    module Projects
      # Data module for projects/data endpoints
      module Data
        # Get all chart data for the requested dimensions
        #
        # @param project_id [Integer] Id of project
        # @param aggregate [String] Aggregate value
        # @param dimension_one [String] Dimension 1 value
        # @param dimension_two [String] Dimension 2 value
        # @param opts [Hash] options hash of parameters
        # @option opts [Hash] filter The filters to apply
        # @return [Hash] All Chart data mentions
        def data(project_id, aggregate, dimension_one, dimension_two, opts = {})
          get "projects/#{project_id}/data/#{aggregate}/#{dimension_one}/#{dimension_two}", opts
        end

        # Get headline figures for specified channels
        #
        # @param project_id [Integer] Id of project
        # @param opts [Hash] options hash of parameters
        # @option opts [Hash] filter The filters to apply
        # @return [Hash] Headline figures for spedified channels
        def data_headlines(project_id, opts = {})
          get "projects/#{project_id}/data/headlines", opts
        end

        include BWAPI::Client::Projects::Data::Audience
        include BWAPI::Client::Projects::Data::AudienceActivity
        include BWAPI::Client::Projects::Data::ChannelMetrics
        include BWAPI::Client::Projects::Data::Emoticons
        include BWAPI::Client::Projects::Data::Hashtags
        include BWAPI::Client::Projects::Data::Headlines
        include BWAPI::Client::Projects::Data::Impressions
        include BWAPI::Client::Projects::Data::MentionedAuthors
        include BWAPI::Client::Projects::Data::Mentions
        include BWAPI::Client::Projects::Data::OwnerActivity
        include BWAPI::Client::Projects::Data::Urls
        include BWAPI::Client::Projects::Data::Volume
      end
    end
  end
end
