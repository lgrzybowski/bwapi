module BWAPI
  class Client
    module Brandwatch
      # DittoBrands module for brandwatch/dittobrands endpoint
      module DittoBrands
        # Get all ditto brands
        #
        # @param opts [Hash] options hash of parameters
        # @option opts [Integer] page Page of results to retrieve
        # @option opts [Integer] pageSize Results per page of results
        # @return [Hash] All ditto brands
        def brandwatch_ditto_brands(opts = {})
          get 'brandwatch/dittobrands', opts
        end

        # Create new ditto brand
        #
        # @param opts [Hash] options hash of parameters
        # @option opts [Integer] id ID of the ditto brand
        # @option opts [String] name Name of the ditto brand
        # @return [Hash] New ditto brand
        def create_brandwatch_ditto_brand(opts = {})
          post 'brandwatch/dittobrands', opts
        end

        # Delete an existing ditto brand
        #
        # @param ditto_brand_id [Integer] id Id of the existing ditto brand
        # @return [Hash] Deleted ditto brand
        def delete_brandwatch_ditto_brand(ditto_brand_id)
          delete "brandwatch/dittobrands/#{ditto_brand_id}"
        end
      end
    end
  end
end
