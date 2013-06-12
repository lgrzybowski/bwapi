require 'faraday'
require 'multi_json'

module Faraday
  class Response::BrandwatchError < Response::Middleware
    ERROR_MAP = {
      400 => Brandwatch::BadRequest,
      401 => Brandwatch::Unauthorized,
      403 => Brandwatch::Forbidden,
      404 => Brandwatch::NotFound,
      406 => Brandwatch::NotAcceptable,
      422 => Brandwatch::UnprocessableEntity,
      429 => Brandwatch::TooManyRequests,
      500 => Brandwatch::InternalServerError,
      501 => Brandwatch::NotImplemented,
      502 => Brandwatch::BadGateway,
      503 => Brandwatch::ServiceUnavailable
    }

    def on_complete(response)
      key = response[:status].to_i
      raise ERROR_MAP[key].new(response) if ERROR_MAP.has_key? key
    end
  end
end
