require 'multi_json'

module BWAPI
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

    # Perform a request
    #
    # @param method [String] Type of request path
    # @param path [String] URL path to send request
    # @param opts [Hash] Request parameters
    # @return [Hashie::Mash] Response
    def request method, path, opts={}
      conn_opts = {
        :headers => {
          :user_agent => user_agent
        },
        :force_urlencoded => opts.delete(:force_urlencoded) || false,
        :url => api_endpoint,
        :ssl => {:verify => verify_ssl}
      }

      response = connection(conn_opts).send(method) do |request|
        # Add token to the header
        if access_token
          request.headers[:authorization] = "bearer #{access_token}"
        end

        case method
        when :get
          request.url path, opts
        when :delete
          request.url path, opts
        when :patch, :post, :put
          if conn_opts[:force_urlencoded]
            request.url path, opts
          else
            request.path = path
            request.body = MultiJson.dump(opts) unless opts.empty?
          end
        end
      end

      response
    end
  end
end