module BWAPI
  class Client
    module Brandwatch
      module CommandCenter
        # Themes module for brandwatch/commandcenter/themes endpoints
        module Themes
          # Get supported Vizia themes
          #
          # @return [Hash] All themes
          def brandwatch_themes
            get 'brandwatch/commandcenter/themes'
          end

          # Get all enabled Vizia themes
          #
          # TODO: Add parameters documentation
          def enabled_brandwatch_themes(opts = {})
            get 'brandwatch/commandcenter/themes/enabled', opts
          end

          # Get a Vizia theme by name
          #
          # TODO: Add parameters documentation
          def brandwatch_theme_by_name(theme_name, opts = {})
            get "brandwatch/commandcenter/themes/name/#{theme_name}", opts
          end

          # Get a Vizia theme by ID
          #
          # TODO: Add parameters documentation
          def brandwatch_theme_by_id(theme_id, opts = {})
            get "brandwatch/commandcenter/themes/id/#{theme_id}", opts
          end

          # Create a new Vizia theme
          #
          # TODO: Add parameters documentation
          def create_brandwatch_theme(opts = {})
            post 'brandwatch/commandcenter/themes', opts
          end

          # Update an existing Vizia theme
          #
          # TODO: Add parameters documentation
          def update_brandwatch_theme(opts = {})
            put 'brandwatch/commandcenter/themes', opts
          end

          # Delete a Vizia theme
          #
          # TODO: Add parameters documentation
          def delete_brandwatch_theme(opts = {})
            delete 'brandwatch/commandcenter/themes', opts
          end
        end
      end
    end
  end
end
