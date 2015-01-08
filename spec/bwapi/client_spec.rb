require 'helper'

describe BWAPI::Client do
  before { BWAPI.reset }

  describe 'when called' do
    it 'should be a client class instance' do
      expect(BWAPI::Client.new).to be_an_instance_of BWAPI::Client
    end
  end

  describe '.authenticated?' do
    it 'returns false when not authenticated' do
      expect(BWAPI::Client.new.authenticated?).to eql(false)
    end

    it 'returns true when authenticated' do
      bw = BWAPI::Client.new access_token: 'abcdef-ghijkl-123456-789012', access_token_expiry: (Time.now + 3600).iso8601
      expect(bw.authenticated?).to eql(true)
    end
  end

  describe '.access_token_expired?' do
    it 'returns true if access_token is set to nil' do
      expect(BWAPI::Client.new.access_token_expired?).to eql(true)
    end

    it 'returns true if access_token_expiry is set to nil' do
      bw = BWAPI::Client.new access_token: 'abcdef-ghijkl-123456-789012'
      expect(bw.access_token_expired?).to eql(true)
    end

    it 'returns true if access token has expired' do
      bw = BWAPI::Client.new access_token: 'abcdef-ghijkl-123456-789012', access_token_expiry: (Time.now - 3600).iso8601
      expect(bw.access_token_expired?).to eql(true)
    end

    it 'returns false if access token has not expired' do
      bw = BWAPI::Client.new access_token: 'abcdef-ghijkl-123456-789012', access_token_expiry: (Time.now + 3600).iso8601
      expect(bw.access_token_expired?).to eql(false)
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

  describe '.seconds_until_access_token_expires' do
    it 'should return the number of seconds until the access token expires' do
      bw = BWAPI::Client.new access_token_expiry: (Time.now + 3600).iso8601
      expect(bw.send(:seconds_until_access_token_expires)).to eql(3600)
    end
  end
end
