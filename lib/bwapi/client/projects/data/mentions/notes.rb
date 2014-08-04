module BWAPI
  class Client
    module Projects
      module Data
        module Mentions
          # Notes module for data/mentions/#{resource_id}/notes endpoints
          module Notes
            # Post a new note for a mention
            #
            # @param project_id [Integer] Id of project
            # @param resource_id [Integer] Id of mention
            # @param opts [Hash] options hash of parameters
            # @option opts [Integer] project_id the id of the project the mention is in
            # @option opts [Integer] resource_id the id of the mention
            # @option opts [String] text the text of the note
            # @return [Hashie::Mash] the new note
            def create_mention_note(project_id, resource_id, opts = {})
              post "projects/#{project_id}/data/mentions/#{resource_id}/notes", opts
            end

            # Get a note for a mention
            #
            # @param project_id [Integer] Id of project
            # @param resource_id [Integer] Id of mention
            # @param note_id [Integer] Id of the note
            # @return [Hashie::Mash] the selected note
            def mention_note(project_id, resource_id, note_id)
              get "projects/#{project_id}/data/mentions/#{resource_id}/notes/#{note_id}"
            end

            # Put an existing note for a mention
            #
            # @param project_id [Integer] Id of project
            # @param resource_id [Integer] Id of mention
            # @param note_id [Integer] Id of the note
            # @param opts [Hash] options hash of parameters
            # @option opts [Integer] project_id the id of the project the mention is in
            # @option opts [Integer] resource_id the id of the mention
            # @option opts [String] text the text of the note
            # @return [Hashie::Mash] the edited note
            def update_mention_note(project_id, resource_id, note_id, opts = {})
              put "projects/#{project_id}/data/mentions/#{resource_id}/notes/#{note_id}", opts
            end

            # Patch an existing note for a mention
            #
            # @param project_id [Integer] Id of project
            # @param resource_id [Integer] Id of mention
            # @param note_id [Integer] Id of the note
            # @param opts [Hash] options hash of parameters
            # @option opts [String] prependNote the text of the note
            # @return [Hashie::Mash] the patched note
            def patch_mention_note(project_id, resource_id, note_id, opts = {})
              patch "projects/#{project_id}/data/mentions/#{resource_id}/notes/#{note_id}", opts
            end
          end
        end
      end
    end
  end
end
