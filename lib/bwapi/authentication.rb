module BWAPI
  module Authentication

    def authenticated?
      !!access_token
    end

  end
end