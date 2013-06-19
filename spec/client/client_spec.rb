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
    end

    describe 'default values' do

      it 'should have :net_http as the default adapter' do
        expect(BWAPI::Client.new.adapter).to eql(:net_http)
      end

      it 'should have a default user agent' do
        expect(BWAPI::Client.new.user_agent).to eql("BWAPI Ruby Gem #{BWAPI::VERSIONc}")
      end

    end

  end

end