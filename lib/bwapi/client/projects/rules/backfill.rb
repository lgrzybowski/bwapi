module BWAPI
  class Client
    module Projects
      module Rules
        # Backfill module for projects/rules/backfill endpoint
        module Backfill
          # Create a backfill for a rule in project
          #
          # @param project_id [Integer] id The id of project
          # @param rule_id [Integer] id The id of rule
          # @return [Hashie::Mash] Specific rule backfill
          def create_rule_backfill(project_id, rule_id)
            post "projects/#{project_id}/rules/#{rule_id}/backfill"
          end
        end
      end
    end
  end
end
