module BWAPI
  class Client
    module Projects
      # DataDownload module for projects/datadownload endpoints
      module DataDownload

        # Get all data downloads in project
        #
        # @param project_id [Integer] Id of project
        # @option opts [Integer] page Page of projects to retrieve
        # @option opts [Integer] pageSize Results per page of results
        # @return [Hashie::Mash] All data downloads in project
        def data_downloads project_id, opts={}
          get "projects/#{project_id}/datadownload", opts
        end

        # Get a specific data download in project
        #
        # @param project_id [Integer] Id of project
        # @param data_download_id [Integer] Id of data download
        # @return [Hashie::Mash] Specific data download
        def get_data_download project_id, data_download_id
          get "projects/#{project_id}/datadownload/#{data_download_id}"
        end
        alias :data_download :get_data_download

        # Create a new data download in project
        #
        # @param project_id [Integer] Id of project
        # @param opts [Hash] options hash of parameters
        # @option opts [Integer] id Id of the data download
        # @option opts [Integer] queryId Id of the query
        # @option opts [Integer] userId Id of the user
        # @option opts [Int] percentComplete The percentage complete of data download
        # @option opts [String] status The status of the download
        # @option opts [String] queryName The query name of the data download
        # @option opts [Date] endDate The end date of the data download
        # @option opts [Date] requestDate The request date of the data download
        # @option opts [String] downloadLinkXLS The link to download the XLS format
        # @option opts [String] downloadLinkCSV The link to download the CSV format
        # @option opts [Array] additionalColumns The additional columns for the data download
        # @return [Hashie::Mash] New data download
        def create_data_download project_id, opts={}
          post "projects/#{project_id}/datadownload", opts
        end

      end
    end
  end
end