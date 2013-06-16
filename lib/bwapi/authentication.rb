module BWAPI
  module Authentication

    def authenticated?
      !!access_token
    end

    def login_netrc netrc=false
      return unless netrc



    end

  end
end