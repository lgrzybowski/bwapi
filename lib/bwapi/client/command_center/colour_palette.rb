module BWAPI
  class Client
    module CommandCenter
      # ColourPalette module for commandcenter/colourPalette endpoints
      module ColourPalette
        # Get the colour palette for the current client
        #
        # TODO: Add parameters documentation
        def colour_palette
          get '/commandcenter/colourPalette'
        end

        # Update the colour palette for the current client
        #
        # TODO: Add parameters documentation
        def update_colour_palette(opts = {})
          put '/commandcenter/colourPalette', opts
        end
      end
    end
  end
end
