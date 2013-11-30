module BWAPI

  # BW error class to capture BWAPI error responses
  class BWError < StandardError
    def initialize response = nil
      errors_object = determine_errors(response)
      super() if errors_object.nil?
      super(generate_error_messages(errors_object))
    end

    # Determines from response and returns error(s)
    def determine_errors response
      return nil if response.nil?
      return nil unless response.is_a?(Hash) && response.has_key?(:body)
      return nil unless response[:body].is_a?(Hash)

      # Determine if response body has known error keys and return
      if response[:body].has_key?('error') && response[:body].has_key?('error_description')
        return response[:body]
      elsif response[:body].has_key?('errors')
        return response[:body]['errors']
      else
        return nil
      end
    end

    # Generates error messsages based on error object passed
    #
    # @param errors_object [Hash] errors
    def generate_error_messages errors_object
      @error_messages = []
      verify_object_class errors_object
      return @error_messages.join(', ')
    end

    # Verifies objects class
    #
    # @param object [Object] object to determine
    def verify_object_class object
      case object
      when Array
        split_array_errors(object)
      when Hash, Hashie::Mash
        split_hash_errors(object)
      when String
        @error_messages << object
      end
    end

    # Iterates through errors in array
    #
    # @param array [Array] array to iterate
    def split_array_errors array
      array.each_with_index do |e, i|
        verify_object_class array[i]
      end
    end

    # Iterates through errors in hash
    #
    # @param hash [Hash] hash to iterate
    def split_hash_errors hash
      message = []
      hash.each {|k,v| message << "%s: %s" % [k, v]}
      @error_messages << message.flatten.join(' with ')
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