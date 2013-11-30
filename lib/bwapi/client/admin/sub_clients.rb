module BWAPI
  class Client
    module Admin
      module Clients
        # Subclients module for admin/subclient endpoints
        module SubClients

          # Get all sub clients
          #
          # @param client_id [Integer] Id of the client
          # @param opts [Hash] options hash of parameters
          # @option opts [Integer] page Page of projects to retrieve
          # @option opts [Integer] pageSize Results per page of results
          # @return [Hashie::Mash] All sub clients for client
          def client_sub_clients client_id, opts={}
            get "admin/clients/#{client_id}/subclients", opts
          end
          alias :sub_clients :client_sub_clients

          # Get specific sub client of client
          #
          # @param client_id [Integer] Id of the client
          # @param sub_client_id [Integer] Id of the sub client
          # @return [Hashie::Mash] Specific sub client for client
          def get_client_sub_client client_id, sub_client_id
            get "admin/clients/#{client_id}/subclients/#{sub_client_id}"
          end
          alias :sub_client :get_client_sub_client

          # Create new subclient
          #
          # @param client_id [Integer] Id of the client
          # @param opts [Hash] options hash of parameters
          # @option opts [Date] startDate Start date of the client
          # @option opts [String] contactTitle Contact title of the client
          # @option opts [String] address1 Address line one of the client
          # @option opts [String] address2 Address line two of the client
          # @option opts [String] address3 Address line three of the client
          # @option opts [String] pricingModel Pricing model of the client
          # @option opts [Integer] mentionArchiveSize Mention archive size for the client
          # @option opts [Integer] id Id of the sub client
          # @option opts [Integer] parentId Parent id of the sub client
          # @option opts [Integer] maxUsers Maxiumum number of users for the client
          # @option opts [Boolean] isLegacy Legacy status of the client
          # @option opts [String] name Name of the client
          # @option opts [String] contactTelephone Telephone number of the client
          # @option opts [Integer] priceStructureId Id of the price structure for client
          # @option opts [Hash] tags Tags for the client
          # @option opts [String] website The website for the client
          # @option opts [String] contactEmail The contact email for the client
          # @option opts [Date] expiryDate The expiry date for the client
          # @option opts [String] theme The theme of the client
          # @option opts [Integer] priceStructureLineId The level of the price structure for the client
          # @option opts [Integer] mentionBasedPricingMatrixLevel The amount of mentions allowed
          # @option opts [String] postcode The postcode of the client
          # @option opts [String] country The country of the client
          # @option opts [String] contactName The contact name of the client
          # @option opts [Integer] maximumSubscribedBrands The maximum subscribed brands for the client
          # @option opts [String] contactMobile The mobile number for the client
          # @return [Hashie::Mash] New sub client
          def create_client_sub_client client_id, opts={}
            post "admin/clients/#{client_id}/subclients", opts
          end
          alias :create_sub_client :create_client_sub_client

          # Update new subclient
          #
          # @param client_id [Integer] Id of the client
          # @param sub_client_id [Integer] Id of the sub client
          # @param opts [Hash] options hash of parameters
          # @option opts [Date] startDate Start date of the client
          # @option opts [String] contactTitle Contact title of the client
          # @option opts [String] address1 Address line one of the client
          # @option opts [String] address2 Address line two of the client
          # @option opts [String] address3 Address line three of the client
          # @option opts [String] pricingModel Pricing model of the client
          # @option opts [Integer] mentionArchiveSize Mention archive size for the client
          # @option opts [Integer] id Id of the sub client
          # @option opts [Integer] parentId Parent id of the sub client
          # @option opts [Integer] maxUsers Maxiumum number of users for the client
          # @option opts [Boolean] isLegacy Legacy status of the client
          # @option opts [String] name Name of the client
          # @option opts [String] contactTelephone Telephone number of the client
          # @option opts [Integer] priceStructureId Id of the price structure for client
          # @option opts [Hash] tags Tags for the client
          # @option opts [String] website The website for the client
          # @option opts [String] contactEmail The contact email for the client
          # @option opts [Date] expiryDate The expiry date for the client
          # @option opts [String] theme The theme of the client
          # @option opts [Integer] priceStructureLineId The level of the price structure for the client
          # @option opts [Integer] mentionBasedPricingMatrixLevel The amount of mentions allowed
          # @option opts [String] postcode The postcode of the client
          # @option opts [String] country The country of the client
          # @option opts [String] contactName The contact name of the client
          # @option opts [Integer] maximumSubscribedBrands The maximum subscribed brands for the client
          # @option opts [String] contactMobile The mobile number for the client
          # @return [Hashie::Mash] Edited sub client
          def update_client_sub_client client_id, sub_client_id, opts={}
            put "admin/clients/#{client_id}/subclients/#{sub_client_id}", opts
          end
          alias :update_sub_client :update_client_sub_client

          # Delete specific sub client of client
          #
          # @param client_id [Integer] Id of the client
          # @param sub_client_id [Integer] Id of the sub client
          # @return [Hashie::Mash] Specific sub client for client
          def delete_client_sub_client client_id, sub_client_id
            delete "admin/clients/#{client_id}/subclients/#{sub_client_id}"
          end
          alias :delete_sub_client :delete_client_sub_client

        end
      end
    end
  end
end