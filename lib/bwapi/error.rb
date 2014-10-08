module BWAPI
  # BW error class to capture BWAPI error responses
  class BWError < StandardError
    def initialize(response = nil)
      @errors = []
      valid_response?(response)
      @errors.empty? ? super() : super(@errors.join(', '))
    end

    # Check if response is valid
    #
    # @param object [Object] response object to check for errors
    def valid_response?(response)
      return nil if response.nil?
      return nil unless response.body.is_a?(Object) && response.respond_to?(:body)
      return nil unless response.body.is_a?(Hash)
      parse_errors(errors_keys?(response.body)) unless response.body.nil?
    end

    # Check if response has known errors keys
    #
    # @param object [Object] response object to process for errors
    def errors_keys?(body)
      if body.key?('error') && body.key?('error_description')
        body
      elsif body.key?('errors')
        body['errors']
      else
        nil
      end
    end

    # Parses errors based on error body passed
    #
    # @param body [Hash] errors
    def parse_errors(body)
      verify_type body
    end

    # Verifies type
    #
    # @param object [Object] type to determine
    def verify_type(type)
      case type
      when Array
        split_array_errors(type)
      when Hash
        split_hash_errors(type)
      when String
        @errors << type
      end
    end

    # Iterates through errors in array
    #
    # @param array [Array] array to iterate
    def split_array_errors(array)
      array.each_with_index { |_e, i| verify_type array[i] }
    end

    # Iterates through errors in hash
    #
    # @param hash [Hash] hash to iterate
    def split_hash_errors(hash)
      message = []
      hash.each { |k, v| message << "#{k}: #{v}" }
      @errors << message.flatten.join(' with ')
    end
  end

  # Raised when Brandwatch returns a 400 HTTP status code
  class BadRequest < BWError; end

  # Raised when Brandwatch returns a 401 HTTP status code
  class Unauthorized < BWError; end

  # Raised when Brandwatch returns a 403 HTTP status code
  class Forbidden < BWError; end

  # Raised when Brandwatch returns a 404 HTTP status code
  class NotFound < BWError; end

  # Raised when Brandwatch returns a 406 HTTP status code
  class NotAcceptable < BWError; end

  # Raised when Brandwatch returns a 422 HTTP status code
  class UnprocessableEntity < BWError; end

  # Raised when Brandwatch returns a 429 HTTP status code
  class TooManyRequests < BWError; end

  # Raised when Brandwatch returns a 500 HTTP status code
  class InternalServerError < BWError; end

  # Raised when Brandwatch returns a 501 HTTP status code
  class NotImplemented < BWError; end

  # Raised when Brandwatch returns a 502 HTTP status code
  class BadGateway < BWError; end

  # Raised when Brandwatch returns a 503 HTTP status code
  class ServiceUnavailable < BWError; end
end
