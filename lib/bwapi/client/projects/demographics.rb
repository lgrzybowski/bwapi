# encoding: utf-8
module BWAPI
  class Client
    module Projects
      # Demographics module for projects/demographics endpoints
      module Demographics
        # Get top values for given metric and query id
        #
        # @param project_id [Integer] Id of project
        # @param metric [String] Demographic metric
        # @param opts [Hash] options Hash of parameters
        # @option opts [Integer] limit The limit to return
        # @option opts [Hash] filter The filters to apply
        # @return [Hashie::Mash] All data downloads in project
        def demographics(project_id, metric, opts = {})
          get "projects/#{project_id}/demographics/#{metric}", opts
        end
      end
    end
  end
end
