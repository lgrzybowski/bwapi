module BWAPI
  class Client
    module CommandCenter
      module Projects
        # Data module for commandcenter/projects/{project_id}/data endpoints
        module Data
          # Retrieve aggregate data and sample mentions broken down by specified dimensions
          #
          # @param project_id [Integer] Id of project
          # @param aggregate [String] Aggregate value
          # @param dimension_one [String] Dimension 1 value
          # @param dimension_two [String] Dimension 2 value
          # TODO: Add parameters documentation
          def command_center_data(project_id, aggregate, dimension_one, dimension_two, opts = {})
            get "commandcenter/projects/#{project_id}/data/#{aggregate}/#{dimension_one}/#{dimension_two}", opts
          end
        end
      end
    end
  end
end
