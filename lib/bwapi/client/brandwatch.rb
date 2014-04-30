# encoding: utf-8

require 'bwapi/client/brandwatch/become'
require 'bwapi/client/brandwatch/client_modules'

module BWAPI
  class Client
    # Brandwatch module for brandwatch endpoints
    module Brandwatch
      # Create a new data download in project
      #
      # @param project_id [Integer] Id of project
      # @param opts [Hash] options hash of parameters
      # @option opts [Integer] id Id of the data download
      # @option opts [Integer] queryId Id of the query
      # @option opts [Int] percentComplete The percentage complete of data download
      # @option opts [String] status The status of the download
      # @option opts [String] queryName The query name of the data download
      # @option opts [Date] endDate The end date of the data download
      # @option opts [Date] requestDate The request date of the data download
      # @option opts [String] downloadLinkXLS The link to download the XLS format
      # @option opts [String] downloadLinkCSV The link to download the CSV format
      # @option opts [Array] additionalColumns The additional columns for the data download
      # @return [Hashie::Mash] New data download
      def brandwatch_data_download(project_id, opts = {})
        post "brandwatch/#{project_id}/datadownload", opts
      end

      include BWAPI::Client::Brandwatch::Become
      include BWAPI::Client::Brandwatch::ClientModules
    end
  end
end
