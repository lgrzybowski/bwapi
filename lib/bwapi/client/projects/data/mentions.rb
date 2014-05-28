# encoding: utf-8
require 'bwapi/client/projects/data/mentions/notes'

module BWAPI
  class Client
    module Projects
      module Data
        # Mentions module for projects/data/mentions endpoints
        module Mentions
          # Get mentions that fall within the submitted filters
          #
          # @param project_id [Integer] Id of project
          # @param opts [Hash] options hash of parameters
          # @option opts [Hash] filter The filters to apply
          # @option opts [Integer] page Page of projects to retrieve
          # @option opts [Integer] pageSize Results per page of results
          # @option opts [String] orderBy Parameter to sort by
          # @option opts [String] orderDirection Direction of sort
          # @option opts [Integer] orderByCategory Category to sort by when orderBy category
          # @return [Hashie::Mash] All Mentions
          def data_mentions(project_id, opts = {})
            get "projects/#{project_id}/data/mentions", opts
          end

          # Update mentions for project
          #
          # @param project_id [Integer] Id of project
          # @param opts [Hash] options hash of parameters
          # @option opts [Hash] List The patches to be applied
          # @return [Hashie::Mash] Updated mentions
          def update_data_mentions(project_id, opts = {})
            patch "projects/#{project_id}/data/mentions", opts
          end

          # Get mentions that fall within the submitted filters with fulltext
          #
          # @param project_id [Integer] Id of project
          # @param opts [Hash] options hash of parameters
          # @option opts [Hash] filter The filters to apply
          # @option opts [Integer] page Page of projects to retrieve
          # @option opts [Integer] pageSize Results per page of results
          # @option opts [String] orderBy Parameter to sort by
          # @option opts [String] orderDirection Direction of sort
          # @option opts [Integer] orderByCategory Category to sort by when orderBy category
          # @return [Hashie::Mash] All Mentions
          def data_mentions_fulltext(project_id, opts = {})
            get "projects/#{project_id}/data/mentions/fulltext", opts
          end

          # Get mentions that fall within the submitted filters with fulltext
          #
          # @param project_id [Integer] Id of project
          # @param opts [Hash] options hash of parameters
          # @option opts [Hash] filter The filters to apply
          # @option opts [Integer] page Page of projects to retrieve
          # @option opts [Integer] pageSize Results per page of results
          # @option opts [String] orderBy Parameter to sort by
          # @option opts [String] orderDirection Direction of sort
          # @option opts [Integer] orderByCategory Category to sort by when orderBy category
          # @return [Hashie::Mash] All Mentions
          def data_mentions_tweets(project_id, opts = {})
            get "projects/#{project_id}/data/mentions/tweets", opts
          end

          include BWAPI::Client::Projects::Data::Mentions::Notes
        end
      end
    end
  end
end
