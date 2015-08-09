require_relative '../spec_helper'

describe RollbarAPI::Client do

  describe "default attributes" do

    it "must include httparty methods" do
      expect(RollbarAPI::Client).to include(HTTParty)
    end

    it "must include all classes" do
      expect(RollbarAPI::Client).to include(RollbarAPI::Client::Teams)
      expect(RollbarAPI::Client).to include(RollbarAPI::Client::Projects)
      expect(RollbarAPI::Client).to include(RollbarAPI::Client::Invites)
      expect(RollbarAPI::Client).to include(RollbarAPI::Client::Items)
    end

    it "must have the base url set to the Rollbar API endpoint" do
      expect(RollbarAPI::Client.base_uri).to eql('https://api.rollbar.com/api/1')
    end

    it "must have json format" do
      expect(RollbarAPI::Client.format).to eql(:json)
    end

  end

end
