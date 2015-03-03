module BWAPI
  class Client
    # Public module for public endpoints
    module Public
      # Given the correct credentials unsubscribe a subscriber from a signal group
      #
      # TODO: Add parameters documentation
      def public_signals_unsubscribe(opts = {})
        post '/public/signals/group/unsubscribe', opts
      end
    end
  end
end
