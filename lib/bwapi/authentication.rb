require 'colored'

module BWAPI
  # Authentication module helper methods
  module Authentication
    # Check if user is authenicated
    #
    # @return [Boolean] Authenticated status
    def authenticated?
      access_token ? true : false
    end

    # Check if user is a brandwatch-application-client type
    #
    # @return [Boolean] Application client status
    def application_client?
      client_id == 'brandwatch-application-client' ? true : false
    end

    # Check if user is a brandwatch-api-client type
    #
    # @return [Boolean] Application client status
    def api_client?
      client_id == 'brandwatch-api-client' ? true : false
    end

    # Set username and password via netrc
    #
    # @param netrc [Boolean] Netrc status
    def netrc_credentials(netrc = false)
      return unless netrc

      require 'netrc'
      file = Netrc.read netrc_file

      # Get credentials using host
      netrc_host = URI.parse(api_endpoint).host
      creds = file[netrc_host]
      fail 'You are missing your .netrc file or the host provided has no credentials!'.red.underline if creds.nil?
      self.username = creds.shift
      self.password = creds.shift
    rescue LoadError
      raise 'Please install netrc gem for .netrc support'.red.underline
    end
  end
end
