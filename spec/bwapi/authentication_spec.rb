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

  describe '.netrc_credentials' do
    it 'returns nil when netrc is false' do
      bw = BWAPI::Client.new
      expect(bw.netrc_credentials).to eql(nil)
    end

    it 'returns credentials when netrc is true' do
      bw = BWAPI::Client.new :netrc => true, :netrc_file => File.join(fixture_path, '.netrc')
      bw.netrc_credentials
      expect(bw.username).to eql('testuser@brandwatch.com')
      expect(bw.password).to eql('password')
    end

  end
end
