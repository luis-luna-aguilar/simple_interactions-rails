# SimpleInteraction::Rails

This simply add a generator to your rails app to create interaction files with 
https://github.com/boza/interaction


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'simple_interaction-rails'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install simple_interaction-rails

## Usage

```
rails generate interaction NAME [options]

Options:
      [--skip-namespace], [--no-skip-namespace]  # Skip namespace (affects only isolated applications)
      [--requirements=one two three]             # Indicates when to generate requirements
      [--fail-with=FAIL_WITH]                    # Indicates when to generate fail with
  -t, [--test-framework=NAME]                    # Test framework to be invoked
                                                 # Default: test_unit

Runtime options:
  -f, [--force]                    # Overwrite files that already exist
  -p, [--pretend], [--no-pretend]  # Run but do not make any changes
  -q, [--quiet], [--no-quiet]      # Suppress status output
  -s, [--skip], [--no-skip]        # Skip files that already exist

Description:
    Generates a new interaction on app/interactions folder

Example:
    rails generate interaction Users::Create --requirements user name --fail_with ErrorClass

    This will create:
        app/interactions/users/create.rb

        module Users
          class Create
            fail_with 'ErrorClass'

            requires :user :name

          end
        end
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/simple_interaction-rails/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
