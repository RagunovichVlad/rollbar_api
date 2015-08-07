require "rollbar_api/client/teams"

module RollbarAPI

  class Client
    include HTTParty
    include RollbarAPI::Client::Teams

    format :json
    base_uri 'https://api.rollbar.com/api/1'


    def initialize(access_token)
      self.class.default_options.merge!(query: {access_token: access_token})
    end
  end
end
