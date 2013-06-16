module BWAPI
  module Authentication

    def authenticated?
      !!access_token
    end

    def netrc_credentials netrc=false
      return unless netrc
      file = Netrc.read

      # Get credentials using host
      netrc_host = URI.parse(api_endpoint).host
      creds = file[netrc_host]
      self.username = creds.shift
      self.password = creds.shift
    end

  end
end