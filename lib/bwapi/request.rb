require 'multi_json'

module BWAPI
  module Request

    def get path, opts={}
      request(:get, path, opts).body
    end

    def delete path, opts={}
      request(:delete, path, opts).body
    end

    def post path, opts={}
      request(:post, path, opts).body
    end

    def put path, opts={}
      request(:put, path, opts).body
    end

    def patch path, opts={}
      request(:patch, path, opts).body
    end

    private

    def request method, path, opts={}
      token = access_token

      force_urlencoded  = opts.delete(:force_urlencoded) || false
      bracketize_params = opts.delete(:bracketize_params) || false

      conn_opts = {
        :force_urlencoded => force_urlencoded,
        :url => api_endpoint
      }

      response = connection(conn_opts).send(method) do |request|
        # Add token to the header
        if token
          request.headers[:authorization] = "bearer #{token}"
        end

        case method
        when :get
          request.url path, opts
        when :delete
          request.url path, opts
        when :patch, :post, :put
          if force_urlencoded
            #request.body = opts unless opts.empty?
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