require "rollbar_api/client/teams"
require "rollbar_api/client/projects"
require "rollbar_api/client/invites"
require "rollbar_api/client/items"

module RollbarAPI

  class Client
    include HTTParty
    include RollbarAPI::Client::Teams
    include RollbarAPI::Client::Projects
    include RollbarAPI::Client::Invites
    include RollbarAPI::Client::Items

    format :json
    base_uri 'https://api.rollbar.com/api/1'


    def initialize(access_token)
      self.class.default_options.merge!(query: {access_token: access_token})
    end
  end
end
