require 'brandwatch/client/brandwatch/become'
require 'brandwatch/client/brandwatch/client_modules'

module Brandwatch
  class Client
    module Brandwatch

      # Alter the log level of the application
      #
      # @param opts [Hash] options Hash of parameters
      # @option opts [String] loglevel Logging level
      # @return [Hashie::Mash] New log level
      def log_level opts
        get "brandwatch/log-level", opts
      end

      # Create a new data download in project
      #
      # @param id [Integer] Id of project
      # @param opts [Hash] options hash of parameters
      # @option opts [Integer] projectId Id of the project
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
      def brandwatch_data_download id, opts
        post "brandwatch/#{project_id}/datadownload"
      end

    end

    include Brandwatch::Client::Brandwatch::Become
    include Brandwatch::Client::Brandwatch::ClientModules
  end
end