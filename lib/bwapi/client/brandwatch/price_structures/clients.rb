module BWAPI
  class Client
    module Brandwatch
      module PriceStructures
        # PriceStructures module for brandwatch/pricestructures/clients endpoints
        module Clients
          # Show a clients reseller price structures
          #
          # TODO: Add parameters documentation
          def get_client_price_structures(client_id, opts = {})
            get "brandwatch/pricestructures/client/#{client_id}", opts
          end
        end
      end
    end
  end
end
