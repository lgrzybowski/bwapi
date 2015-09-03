module BWAPI
  class Client
    module Client
      # Pricingoptions module for client/pricingoptions endpoint
      module PricingOptions
        # Retrieve a list of pricing options
        #
        # TODO: Add parameters documentation
        def pricing_options
          get 'client/pricingoptions'
        end
      end
    end
  end
end
