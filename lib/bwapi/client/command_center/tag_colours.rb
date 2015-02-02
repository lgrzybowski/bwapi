module BWAPI
  class Client
    module CommandCenter
      # TagColours module for commandcenter/tagColours endpoints
      module TagColours
        # Get colours defined for tags in current client
        #
        # TODO: Add parameters documentation
        def all_tag_colours
          get 'commandcenter/tagColours'
        end
      end
    end
  end
end
