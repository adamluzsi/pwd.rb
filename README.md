# Pwd

Look up for project root folder based on conventions

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'pwd'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pwd

## Usage

```ruby

require 'pwd'

PWD.pwd #> returns project root folder

Dir.root_folder #> the same but more readable in that form

```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/pwd. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.

