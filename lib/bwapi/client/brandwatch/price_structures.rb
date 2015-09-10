require 'bwapi/client/brandwatch/price_structures/clients'

module BWAPI
  class Client
    module Brandwatch
      # PriceStructures module for brandwatch/pricestructures endpoint
      module PriceStructures
        # Show available price structures
        #
        # @return [Array] List of all price structures
        def get_price_structures
          get 'brandwatch/pricestructures'
        end

        # Get the price structures available for a client
        #
        # TODO: Add parameters documentation
        def get_client_price_structures(client_id)
          get "/brandwatch/pricestructures/clients/#{client_id}"
        end

        # Create a new price structure
        #
        # @param opts [Hash] options Hash of parameters
        # @option opts [Integer] autoDeleteDays Auto delete days of the price structure
        # @option opts [Boolean] autoUpgrade If the price structure can be auto upgraded
        # @option opts [Integer] availableBackfillMonths Available backfill months of the price structure
        # @option opts [Integer] backfillMentionLimit Backfill mention limit of the price structure
        # @option opts [String] backfillMentionLimitPeriod Backfill mention limit period of the price structure
        # @option opts [String] currencyCode Currency code of the price structure
        # @option opts [String] description Description of the price structure
        # @option opts [Boolean] forWebSignUp If the price structure is for web sign up
        # @option opts [Integer] id Id of the price structure
        # @option opts [String] mentionLimitPeriod Mention limit period of the price structure
        # @option opts [String] name Name of the price structure
        # @option opts [String] notes Notes for the price structure
        # @option opts [Array] priceStructureLines Price structure lines belonging to the price structure
        # @option opts [Boolean] resellerAllowed If the price structure is reseller allowed
        # @return [Hash] Newly created price structure
        def create_price_structure(opts)
          post 'brandwatch/pricestructures', opts
        end

        # Delete a price structure
        #
        # @param price_structure_id [Integer] Id of the price structure
        # @return [Hash] Deleted price structure
        def delete_price_structure(price_structure_id)
          delete "brandwatch/pricestructures/#{price_structure_id}"
        end

        include BWAPI::Client::Brandwatch::PriceStructures::Clients
      end
    end
  end
end
