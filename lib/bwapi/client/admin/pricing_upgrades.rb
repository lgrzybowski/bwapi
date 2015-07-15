module BWAPI
  class Client
    module Admin
      # PricingUpgrades module for admin/pricingupgrades endpoints
      module PricingUpgrades
        # Get available pricing upgrades for a specific client
        #
        # TODO: Add parameters documentation
        def pricing_upgrades(client_id)
          get "admin/pricingupgrades/#{client_id}"
        end
      end
    end
  end
end
