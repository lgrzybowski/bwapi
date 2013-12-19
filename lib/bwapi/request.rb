require 'multi_json'

module BWAPI
  # Request module to handle all requests to API
  module Request

    # Perform a get request
    #
    # @param path [String] URL path to send request
    # @param opts [Hash] Request parameters
    # @return [Hashie::Mash] Response body
    def get path, opts={}
      request(:get, path, opts).body
    end

    # Perform a delete request
    #
    # @param path [String] URL path to send request
    # @param opts [Hash] Request parameters
    # @return [Hashie::Mash] Response body
    def delete path, opts={}
      request(:delete, path, opts).body
    end

    # Perform a post request
    #
    # @param path [String] URL path to send request
    # @param opts [Hash] Request parameters
    # @return [Hashie::Mash] Response body
    def post path, opts={}
      request(:post, path, opts).body
    end

    # Perform a put request
    #
    # @param path [String] URL path to send request
    # @param opts [Hash] Request parameters
    # @return [Hashie::Mash] Response body
    def put path, opts={}
      request(:put, path, opts).body
    end

    # Perform a patch request
    #
    # @param path [String] URL path to send request
    # @param opts [Hash] Request parameters
    # @return [Hashie::Mash] Response body
    def patch path, opts={}
      request(:patch, path, opts).body
    end

    private

    # Sets connection options
    #
    # @param opts [Hash] hash of opts passed
    # @return [Hash] connection options
    def connection_options opts
      {
        :headers => {
          :authorization => access_token ? "bearer #{access_token}" : "",
          :user_agent => user_agent
        },
        :force_urlencoded => opts.delete(:force_urlencoded) || false,
        :url => api_endpoint,
        :ssl => {:verify => verify_ssl}
      }
    end

    # Perform a request
    #
    # @param method [String] Type of request path
    # @param path [String] URL path to send request
    # @param opts [Hash] Request parameters
    # @return [Hashie::Mash] Response
    def request method, path, opts={}
      conn_options = connection_options opts
      response = connection(conn_options).send(method) do |request|
        case method
        when :get
          request.url path, opts
        when :delete
          request.url path, opts
        when :patch, :post, :put
          if conn_options[:force_urlencoded]
            request.url path, opts
          else
            request.path = path
            request.body = MultiJson.dump(opts) unless opts.empty?
          end
        end
      end

      if debug
        log.info 'Connection options: %s' % conn_options
        log.info 'Sending %s request' % method
        log.info 'Request path: %s' % path
        log.info 'Request url: %s' % api_endpoint + '/' + path
        log.info 'Request parameters: %s' % opts unless opts.nil?
        log.info 'Response body: %s' % response.env[:body] unless response.env[:body].nil?
      end

      response
    end
  end
end