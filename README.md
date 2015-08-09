## Rollbar API ruby client library

[![Build Status](https://magnum.travis-ci.com/RagunovichVlad/rollbar_api.svg?token=sSGGAcKAtBywfMyZUSP2&branch=master)](https://magnum.travis-ci.com/RagunovichVlad/rollbar_api)
[![Code Climate](https://codeclimate.com/repos/55c7b0666956804520006d34/badges/b2b37277e90562966c10/gpa.svg)](https://codeclimate.com/repos/55c7b0666956804520006d34/feed)
[![Test Coverage](https://codeclimate.com/repos/55c7b0666956804520006d34/badges/b2b37277e90562966c10/coverage.svg)](https://codeclimate.com/repos/55c7b0666956804520006d34/coverage)

Client library for talking to [Rollbar API](https://rollbar.com/docs/api_overview/).

#### Installation

Add this line to your application's Gemfile:

```ruby
gem 'rollbar_api'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rollbar_api

#### Usage

First of all, initialize client:

```ruby
client = RollbarAPI::Client.new("MY_API_TOKEN")
```

And then talk to API:

```ruby
client.create_project("rollbar_api")
```

#### Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/RagunovichVlad/rollbar_api. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


#### License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

