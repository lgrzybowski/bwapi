require 'helper'

describe BWAPI::Authentication do

  before do
    BWAPI.reset
  end

  describe '.authenticated?' do
    it 'returns true when authenticated' do
      expect(BWAPI::Client.new.authenticated?).to eql(false)
    end

    it 'returns false when not authenticated' do
      bw = BWAPI::Client.new :access_token => 'abcdef-ghijkl-123456-789012'
      expect(bw.authenticated?).to eql(true)
    end
  end

  describe '.application_client?' do
    it 'returns true when client is a brandwatch-application-client' do
      bw = BWAPI::Client.new :client_id => 'brandwatch-application-client'
      expect(bw.application_client?).to eql(true)
    end

    it 'returns false when a client is not a brandwatch-application-client' do
      expect(BWAPI::Client.new.application_client?).to eql(false)
    end
  end

  describe '.api_client?' do
    it 'returns true when client is a brandwatch-api-client' do
      bw = BWAPI::Client.new :client_id => 'brandwatch-api-client'
      expect(bw.api_client?).to eql(true)
    end

    it 'returns false when a client is not a brandwatch-api-client' do
      bw = BWAPI::Client.new :client_id => 'brandwatch-application-client'
      expect(bw.api_client?).to eql(false)
    end
  end
end
