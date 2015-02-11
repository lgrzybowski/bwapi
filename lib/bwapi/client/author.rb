module BWAPI
  class Client
    # Author module for author endpoints
    module Author
      # Gets all author professions
      #
      # @param opts [Hash] options hash of parameters
      # @option opts [Integer] page Page of results to retrieve
      # @option opts [Integer] pageSize Results per page of results
      # @return [Hash] All author professions
      def author_professions(opts = {})
        get 'authors/professions', opts
      end

      # Gets all author interests
      #
      # @param opts [Hash] options hash of parameters
      # @option opts [Integer] page Page of results to retrieve
      # @option opts [Integer] pageSize Results per page of results
      # @return [Hash] All author interests
      def author_interests(opts = {})
        get 'authors/interests', opts
      end

      # Get an Author with its associated accounts using an account name/domain tuple
      #
      # @param name [String] Account username
      # @param opts [Hash] options hash of parameters
      # @option opts [String] domain Account domain
      # @return [Hash] Author
      def get_author(name, opts = {})
        get "authors/#{name}", opts
      end

      # Update an Author using an account name/domain tuple
      #
      # @param name [String] Account username
      # @param opts [Hash] options hash of parameters
      # @option opts [String] accountType Account type of Author Patch
      # @option opts [Array] addInterests Interests to add of Author Patch
      # @option opts [Array] addProfessions Professions to add of Author Patch
      # @option opts [String] domain Domain of Author Patch
      # @option opts [String] gender Gender of Author Patch
      # @option opts [Integer] projectId Project ID of Author Patch
      # @option opts [Integer] queryId Query ID of Author Patch
      # @option opts [Array] removeInterests Interests to remove of Author Patch
      # @option opts [Array] removeProfessions Professions to remove of Author Patch
      # @option opts [Integer] resourceId Resource ID of Author Patch
      # @option opts [String] username Username of Author to be patched
      # @return [Hash] Updated author
      def update_author(name, opts = {})
        patch "authors/#{name}", opts
      end
    end
  end
end
