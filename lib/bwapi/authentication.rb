require 'netrc'

module BWAPI
  module Authentication

    # Check if user is authenicated
    #
    # @return [Boolean] Authenticated status
    def authenticated?
      !!access_token
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
    def netrc_credentials netrc=false
      return unless netrc
      file = Netrc.read netrc_file

      # Get credentials using host
      netrc_host = URI.parse(api_endpoint).host
      creds = file[netrc_host]
      self.username = creds.shift
      self.password = creds.shift
    end

  end
end