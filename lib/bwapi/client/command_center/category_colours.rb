module BWAPI
  class Client
    module CommandCenter
      # CategoryColours module for commandcenter/categoryColours endpoints
      module CategoryColours
        # Get colours defined for categories in current client
        #
        # TODO: Add parameters documentation
        def all_category_colours
          get 'commandcenter/categoryColours'
        end
      end
    end
  end
end
