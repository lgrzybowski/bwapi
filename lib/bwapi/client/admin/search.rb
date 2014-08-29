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
          # @return [Hash] List of queries
          def search_query_text(opts = {})
            get 'admin/search/querytext', opts
          end

          # Get a list of query names
          #
          # @param opts [Hash] options hash of parameters
          # @option opts [Integer] text Text expression
          # @return [Hash] List of query names
          def search_query_name(opts = {})
            get 'admin/search/queryname', opts
          end

          # Get a list of rules
          #
          # @param opts [Hash] options hash of parameters
          # @option opts [Integer] text Text expression
          # @return [Hash] List of rules
          def search_rule_text(opts = {})
            get 'admin/search/ruletext', opts
          end
        end
      end
    end
  end
end
