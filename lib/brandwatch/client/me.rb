module Brandwatch
  class Client
    module Me

      def me
        request :get, 'me'
      end

    end
  end
end