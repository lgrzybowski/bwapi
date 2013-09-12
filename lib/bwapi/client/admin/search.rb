module BWAPI
  class Client
    module Admin
      module Clients
        # Search module for admin/search endpoints
        module Search

          # Get a list of queries
          #
          # @param opts [Hash] options hash of parameters
          # @option opts [Integer] text Text expression
          # @return [Hashie::Mash] List of queries
          def search_query_text opts
            get "admin/search/querytext"
          end
          alias :query_text :search_query_text

          # Get a list of query names
          #
          # @param opts [Hash] options hash of parameters
          # @option opts [Integer] text Text expression
          # @return [Hashie::Mash] List of query names
          def search_query_name opts
            get "admin/search/queryname"
          end
          alias :query_name :search_query_name

          # Get a list of rules
          #
          # @param opts [Hash] options hash of parameters
          # @option opts [Integer] text Text expression
          # @return [Hashie::Mash] List of rules
          def search_rule_text opts
            get "admin/search/ruletext"
          end
          alias :rule_text :search_rule_text

        end
      end
    end
  end
end