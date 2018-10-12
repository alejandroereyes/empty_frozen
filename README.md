# EmptyFrozen

Need to return something other than `nil`? We've all needed to from time to time 😅 . Sometimes no mutation will be done to this returning value and sometimes there will; `empty_frozen`'s got you covered either way.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'empty_frozen'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install empty_frozen

## Usage

```ruby
require 'empty_frozen'

...

def space_instagram
  return Hash.empty if cadet?

  visited.celestial.each_with_object({}) do |celestial, hsh|
    hsh[celestial] = selfies_taken_at celestial
  end
end

def potential_pet_recommendations
  return Array.empty_frozen if has_no_heart?

  liked.animals.map(&:species).uniq
end

```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/alejandroereyes/empty_frozen. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the EmptyFrozen project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/empty_frozen/blob/master/CODE_OF_CONDUCT.md).
