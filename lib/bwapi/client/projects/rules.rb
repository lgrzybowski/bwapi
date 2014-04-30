require 'bwapi/client/projects/rules/backfill'
require 'bwapi/client/projects/rules/copy'

module BWAPI
  class Client
    module Projects
      # Rules module for projects/rules endpoints
      module Rules
        # Get all rules in project
        #
        # @param project_id [Integer] The id of project
        # @param opts [Hash] options Hash of parameters
        # @option opts [String] nameContains Partial name to filter by
        # @option opts [Boolean] getPaused Includes the paused rules if true
        # @option opts [Integer] page Page Number of results to retrieve
        # @option opts [Integer] pageSize Results per page of results
        # @return [Hashie::Mash] All rules in project
        def rules(project_id, opts = {})
          get "projects/#{project_id}/rules", opts
        end

        # Get a specific rule in project
        #
        # @param project_id [Integer] id The id of project
        # @param rule_id [Integer] id The id of rule
        # @return [Hashie::Mash] Specific rule
        def get_rule(project_id, rule_id)
          get "projects/#{project_id}/rules/#{rule_id}"
        end

        # Create a new rule in project
        #
        # @param project_id [Integer] The project id
        # @param opts [Hash] options Hash of parameters
        # @option opts [String] id The rule id
        # @option opts [String] name The name of the rule
        # @option opts [Hash] filter Filter object
        # @option opts [String] scope The scope of the rule
        # @option opts [Boolean] enabled If the rule is paused
        # @option opts [Hash] rule Rule object
        # @option opts [String] queryName The query name the rule is applied to
        # @option opts [String] projectName The project name the rule is applied to
        # @return [Hashie::Mash] New rule
        def create_rule(project_id, opts = {})
          post "projects/#{project_id}/rules", opts
        end

        # Update an existing rule in project
        #
        # @param project_id [Integer] The project id
        # @param opts [Hash] options Hash of parameters
        # @option opts [String] id The rule id
        # @option opts [String] name The name of the rule
        # @option opts [Hash] filter Filter object
        # @option opts [String] scope The scope of the rule
        # @option opts [Boolean] enabled If the rule is paused
        # @option opts [Hash] rule Rule object
        # @option opts [String] queryName The query name the rule is applied to
        # @option opts [String] projectName The project name the rule is applied to
        # @return [Hashie::Mash] Updated rule
        def update_rule(project_id, rule_id, opts = {})
          put "projects/#{project_id}/rules/#{rule_id}", opts
        end

        # Delete an existing rule project
        #
        # @param project_id [Integer] Id The project id
        # @param rule_id [Integer] Id The rule id
        # @return [Hashie::Mash] Deleted rule
        def delete_rule(project_id, rule_id)
          delete "projects/#{project_id}/rules/#{rule_id}"
        end

        include BWAPI::Client::Projects::Rules::Backfill
        include BWAPI::Client::Projects::Rules::Copy
      end
    end
  end
end
