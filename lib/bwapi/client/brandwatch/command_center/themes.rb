module BWAPI
  class Client
    module Brandwatch
      module CommandCenter
        # Themes module for brandwatch/commandcenter/themes endpoints
        module Themes
          # Get supported Vizia themes
          #
          # @return [Hash] All themes
          def brandwatch_all_themes
            get 'brandwatch/commandcenter/themes'
          end
        end
      end
    end
  end
end
