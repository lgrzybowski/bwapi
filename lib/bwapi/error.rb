module BWAPI
  # Raised when Brandwatch returns a 400 HTTP status code
  class BadRequest < StandardError; end

  # Raised when Brandwatch returns a 401 HTTP status code
  class Unauthorized < StandardError; end

  # Raised when Brandwatch returns a 403 HTTP status code
  class Forbidden < StandardError; end

  # Raised when Brandwatch returns a 404 HTTP status code
  class NotFound < StandardError; end

  # Raised when Brandwatch returns a 406 HTTP status code
  class NotAcceptable < StandardError; end

  # Raised when Brandwatch returns a 422 HTTP status code
  class UnprocessableEntity < StandardError; end

   # Raised when Brandwatch returns a 429 HTTP status code
  class TooManyRequests < StandardError; end

  # Raised when Brandwatch returns a 500 HTTP status code
  class InternalServerError < StandardError; end

  # Raised when Brandwatch returns a 501 HTTP status code
  class NotImplemented < StandardError; end

  # Raised when Brandwatch returns a 502 HTTP status code
  class BadGateway < StandardError; end

  # Raised when Brandwatch returns a 503 HTTP status code
  class ServiceUnavailable < StandardError; end
end