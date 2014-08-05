require 'faraday'

module BWAPI
  # Request module
  module Request
    RACK_BUILDER_CLASS = defined?(Faraday::RackBuilder) ? Faraday::RackBuilder : Faraday::Builder

    # Perform a get request
    #
    # @param path [String] URL path to send request
    # @param opts [Hash] Request parameters
    # @return [Hashie::Mash] Response body
    def get(path, opts = {})
      request(:get, path, opts).body
    end

    # Perform a delete request
    #
    # @param path [String] URL path to send request
    # @param opts [Hash] Request parameters
    # @return [Hashie::Mash] Response body
    def delete(path, opts = {})
      request(:delete, path, opts).body
    end

    # Perform a post request
    #
    # @param path [String] URL path to send request
    # @param opts [Hash] Request parameters
    # @return [Hashie::Mash] Response body
    def post(path, opts = {})
      request(:post, path, opts).body
    end

    # Perform a put request
    #
    # @param path [String] URL path to send request
    # @param opts [Hash] Request parameters
    # @return [Hashie::Mash] Response body
    def put(path, opts = {})
      request(:put, path, opts).body
    end

    # Perform a patch request
    #
    # @param path [String] URL path to send request
    # @param opts [Hash] Request parameters
    # @return [Hashie::Mash] Response body
    def patch(path, opts = {})
      request(:patch, path, opts).body
    end

    private

    # Perform a request
    #
    # @param method [String] Type of request
    # @param path [String] URL path to send request
    # @param opts [Hash] Request parameters
    # @return [Hashie::Mash] Response
    def request(method, path, opts = {})
      response = connection.send(method) do |r|
        case method
        when :get, :delete
          r.url path, opts
        when :patch, :post, :put
          if opts.is_a?(Hash) && opts.key?(:force_urlencoded)
            opts.delete(:force_urlencoded)
            r.url path, opts
          else
            r.path = path
            r.body = opts
          end
        end
      end
      response
    end
  end
end
