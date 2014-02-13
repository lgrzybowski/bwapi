module BWAPI
  class Client
    module Projects
      module Rules
        # Backfill module for projects/rules/copy endpoint
        module Copy

          # Copy a rule to another project
          #
          # @param project_id [Integer] id The id of project
          # @param rule_id [Integer] id The id of rule
          # @param opts [Hash] options Hash of parameters
          # @option opts [Integer] copyToProjectId the target project id
          # @option opts [Boolean] backdate Starts a backfill if true
          # @return [Hashie::Mash] New rule created in project
          def create_rule_backfill project_id, rule_id, opts={}
            get "projects/#{project_id}/rules/#{rule_id}/copy", opts
          end

        end
      end
    end
  end
end