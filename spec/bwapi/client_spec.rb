# encoding: utf-8

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

      it 'should create a password instance variable' do
        expect(BWAPI::Client.new.respond_to?(:password)).to eq(true)
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

      it 'should create a expires_in instance variable' do
        expect(BWAPI::Client.new.respond_to?(:expires_in)).to eq(true)
      end

      it 'should create a client_id instance variable' do
        expect(BWAPI::Client.new.respond_to?(:client_id)).to eq(true)
      end

      it 'should create a client_secret instance variable' do
        expect(BWAPI::Client.new.respond_to?(:client_secret)).to eq(true)
      end

      it 'should create a netrc instance variable' do
        expect(BWAPI::Client.new.respond_to?(:netrc)).to eq(true)
      end

      it 'should create a netrc_file instance variable' do
        expect(BWAPI::Client.new.respond_to?(:netrc_file)).to eq(true)
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

      describe 'netrc' do
        it 'should have a default netrc value' do
          expect(BWAPI::Client.new.netrc).to eql(false)
        end

        it 'should allow a user to set true for the netrc value' do
          bw = BWAPI::Client.new netrc: true, netrc_file: File.join(fixture_path, '.netrc')
          expect(bw.netrc).to eql(true)
        end
      end

      describe 'netrc_file' do
        it 'should have a default netrc value' do
          expect(BWAPI::Client.new.netrc_file).to eql("#{ENV['HOME'] + '/' + '.netrc'}")
        end

        it 'should allow a user to set a netrc_file value' do
          bw = BWAPI::Client.new netrc_file: 'example/.netrc'
          expect(bw.netrc_file).to eql('example/.netrc')
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
        it 'should have a default value of nil for password' do
          expect(BWAPI::Client.new.password).to eql(nil)
        end

        it 'should allow a user to set a password value' do
          bw = BWAPI::Client.new password: 'pa55w0rd'
          expect(bw.password).to eql('pa55w0rd')
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
        it 'should have a default value of nil for client_secret' do
          expect(BWAPI::Client.new.client_secret).to eql(nil)
        end

        it 'should allow a user to set a client_secret value' do
          bw = BWAPI::Client.new client_secret: 'custom_client_secret'
          expect(bw.client_secret).to eql('custom_client_secret')
        end
      end
    end
  end
end
