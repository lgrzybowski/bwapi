module BWAPI

  class BWError < StandardError
    def initialize(response=nil)
      super()
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