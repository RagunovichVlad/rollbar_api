## Rollbar API ruby client library

[![Build Status](https://travis-ci.org/RagunovichVlad/rollbar_api.svg)](https://travis-ci.org/RagunovichVlad/rollbar_api)
[![Test Coverage](https://codeclimate.com/repos/55c7b0666956804520006d34/badges/b2b37277e90562966c10/coverage.svg)](https://codeclimate.com/repos/55c7b0666956804520006d34/coverage)

Client library for talking to [Rollbar API](https://rollbar.com/docs/api_overview/).

### Installation

Add this line to your application's Gemfile:

```ruby
gem 'rollbar_api'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rollbar_api

### Usage

First of all, initialize client:

```ruby
client = RollbarAPI::Client.new("MY_API_TOKEN")
```

And then talk to API:

```ruby
client.create_project("rollbar_api")
```

### List of all methods

Client methods really just map 1 to 1 to API, see all of them beyond. Check API docs for list of available `options`.

#### Projects methods:
```ruby
all_projects
get_project(project_id)
create_project(options = {})
delete_project(project_id)
update_project_access_tokens(project_id, options = {})
```
#### Teams methods:
```ruby
all_teams
get_team(team_id)
create_team(options = {})
delete_team(team_id)
check_project_in_team(team_id, project_id)
add_project_to_team(team_id, project_id)
remove_project_from_team(team_id, project_id)
check_team_membership(team_id, user_id)
team_members(team_id)
remove_user_from_team(team_id, user_id)
```
#### Invites methods:
```ruby
get_invite(invite_id)
invites_for_team(team_id)
invite_user_to_team(team_id, options = {})
cancel_invite(invite_id)
cancel_accepted_invite(team_id, user_id)
```
#### Items methods:
```ruby
get_item(item_id)
item_by_counter(counter)
all_items
update_item(item_id, options = {})
```

### Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/RagunovichVlad/rollbar_api. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


### License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

