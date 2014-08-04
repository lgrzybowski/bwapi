require 'helper'

describe BWAPI::Client do
  before do
    BWAPI.reset
  end

  describe 'when called' do
    it 'should be a client class instance' do
      BWAPI::Client.new.should be_an_instance_of BWAPI::Client
    end
  end

  describe '.authenticated?' do
    it 'returns true when authenticated' do
      expect(BWAPI::Client.new.authenticated?).to eql(false)
    end

    it 'returns false when not authenticated' do
      bw = BWAPI::Client.new access_token: 'abcdef-ghijkl-123456-789012'
      expect(bw.authenticated?).to eql(true)
    end
  end

  describe '.application_client?' do
    it 'returns true when client is a brandwatch-application-client' do
      bw = BWAPI::Client.new client_id: 'brandwatch-application-client'
      expect(bw.application_client?).to eql(true)
    end

    it 'returns false when a client is not a brandwatch-application-client' do
      expect(BWAPI::Client.new.application_client?).to eql(false)
    end
  end

  describe '.api_client?' do
    it 'returns true when client is a brandwatch-api-client' do
      bw = BWAPI::Client.new client_id: 'brandwatch-api-client'
      expect(bw.api_client?).to eql(true)
    end

    it 'returns false when a client is not a brandwatch-api-client' do
      bw = BWAPI::Client.new client_id: 'brandwatch-application-client'
      expect(bw.api_client?).to eql(false)
    end
  end

  describe 'configuration' do
    describe 'instance variables' do
      it 'should create a api_endpoint instance variable' do
        expect(BWAPI::Client.new.respond_to?(:api_endpoint)).to eq(true)
      end

      it 'should create a user_agent instance variable' do
        expect(BWAPI::Client.new.respond_to?(:user_agent)).to eq(true)
      end

      it 'should create a adapter instance variable' do
        expect(BWAPI::Client.new.respond_to?(:adapter)).to eq(true)
      end

      it 'should create a username instance variable' do
        expect(BWAPI::Client.new.respond_to?(:username)).to eq(true)
      end

      it 'should create a password instance variable which cannot be accessed' do
        expect(BWAPI::Client.new.respond_to?(:password)).to eq(false)
      end

      it 'should create a grant_type instance variable' do
        expect(BWAPI::Client.new.respond_to?(:grant_type)).to eq(true)
      end

      it 'should create a access_token instance variable' do
        expect(BWAPI::Client.new.respond_to?(:access_token)).to eq(true)
      end

      it 'should create a refresh_token instance variable' do
        expect(BWAPI::Client.new.respond_to?(:refresh_token)).to eq(true)
      end

      it 'should create a client_id instance variable' do
        expect(BWAPI::Client.new.respond_to?(:client_id)).to eq(true)
      end

      it 'should create a client_secret instance variable which cannot accessed' do
        expect(BWAPI::Client.new.respond_to?(:client_secret)).to eq(false)
      end

      it 'should create a logger instance variable' do
        expect(BWAPI::Client.new.respond_to?(:logger)).to eq(true)
      end
    end

    describe 'configuration values' do
      describe 'default_adapter' do
        it 'should have a default default_adapter value' do
          expect(BWAPI::Client.new.adapter).to eql(:net_http)
        end

        it 'should allow a user to set a default_adapter value' do
          bw = BWAPI::Client.new adapter: 'custom_adapter'
          expect(bw.adapter).to eql('custom_adapter')
        end
      end

      describe 'user_agent' do
        it 'should have a default user_agent value' do
          expect(BWAPI::Client.new.user_agent).to eql("BWAPI Ruby Gem #{BWAPI::VERSION}")
        end

        it 'should allow a user to set a user_agent value' do
          bw = BWAPI::Client.new user_agent: 'custom_user_agent'
          expect(bw.user_agent).to eql('custom_user_agent')
        end
      end

      describe 'api_endpoint' do
        it 'should have a default api_endpoint value' do
          expect(BWAPI::Client.new.api_endpoint).to eql('https://newapi.brandwatch.com/')
        end

        it 'should allow a user to set a api_endpoint value' do
          bw = BWAPI::Client.new api_endpoint: 'http://newapi.custom.brandwatch.com'
          expect(bw.api_endpoint).to eql('http://newapi.custom.brandwatch.com')
        end
      end

      describe 'client_id' do
        it 'should have a default client_id value' do
          expect(BWAPI::Client.new.client_id).to eql('brandwatch-api-client')
        end

        it 'should allow a user to set a client_id value' do
          bw = BWAPI::Client.new client_id: 'custom_client_id'
          expect(bw.client_id).to eql('custom_client_id')
        end
      end

      describe 'username' do
        it 'should have a default value of nil for username' do
          expect(BWAPI::Client.new.username).to eql(nil)
        end

        it 'should allow a user to set a username value' do
          bw = BWAPI::Client.new username: 'jonathan@brandwatch.com'
          expect(bw.username).to eql('jonathan@brandwatch.com')
        end
      end

      describe 'password' do
        it 'should allow a user to set a password value' do
          bw = BWAPI::Client.new password: 'pa55w0rd'
          bw.instance_eval { @password }.should eql('pa55w0rd')
        end
      end

      describe 'grant_type' do
        it 'should have a default value of nil for grant_type' do
          expect(BWAPI::Client.new.grant_type).to eql(nil)
        end

        it 'should allow a user to set a grant_type value' do
          bw = BWAPI::Client.new grant_type: 'custom_grant_type'
          expect(bw.grant_type).to eql('custom_grant_type')
        end
      end

      describe 'access_token' do
        it 'should have a default value of nil for access_token' do
          expect(BWAPI::Client.new.access_token).to eql(nil)
        end

        it 'should allow a user to set a access_token value' do
          bw = BWAPI::Client.new access_token: 'abcdef-ghijkl-123456-789012'
          expect(bw.access_token).to eql('abcdef-ghijkl-123456-789012')
        end
      end

      describe 'refresh_token' do
        it 'should have a default value of nil for refresh_token' do
          expect(BWAPI::Client.new.refresh_token).to eql(nil)
        end

        it 'should allow a user to set a refresh_token value' do
          bw = BWAPI::Client.new refresh_token: 'abcdef-ghijkl-123456-789012'
          expect(bw.refresh_token).to eql('abcdef-ghijkl-123456-789012')
        end
      end

      describe 'client_secret' do
        it 'should allow a user to set a client_secret value' do
          bw = BWAPI::Client.new client_secret: 'custom_client_secret'
          bw.instance_eval { @client_secret }.should eql('custom_client_secret')
        end
      end

      describe 'logger' do
        it 'should have a default value of nil for logger' do
          expect(BWAPI::Client.new.logger).to eql(nil)
        end

        it 'should allow a user to set a logger value' do
          logger = Object.new
          bw = BWAPI::Client.new logger: logger
          expect(bw.logger).to eql(logger)
        end
      end
    end
  end
end
