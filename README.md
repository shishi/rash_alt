# rash

[![gem version](https://img.shields.io/gem/v/rash_alt.svg)](https://rubygems.org/gems/rash_alt)
[![build status](https://github.com/shishi/rash_alt/workflows/rspec/badge.svg)](https://github.com/shishi/rash_alt/actions?query=workflow%3Arspec)

Rash is an extension to Hashie ( http://github.com/hashie/hashie ).

Rash subclasses Hashie::Mash to convert all keys in the hash to underscore.

The purpose of this is when working w/ Java (or any other apis) that return
hashes (including nested) that have camelCased keys.

You will now be able to access those keys through underscored key names
(camelCase still available).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rash_alt', require: 'rash'
```

And then execute:

```shell
$ bundle
```

Or install it yourself as:

```shell
$ gem install rash_alt
```

## Usage

```ruby
@rash = Hashie::Mash::Rash.new({
  "varOne" => 1,
  "two" => 2,
  :three => 3,
  :varFour => 4,
  "fiveHumpHumps" => 5,
  :nested => {
    "NestedOne" => "One",
    :two => "two",
    "nested_three" => "three"
  },
  "nestedTwo" => {
    "nested_two" => 22,
    :nestedThree => 23
  }
})

@rash.var_one                 # => 1
@rash.two                     # => 2
@rash.three                   # => 3
@rash.var_four                # => 4
@rash.five_hump_humps         # => 5
@rash.nested.nested_one       # => "One"
@rash.nested.two              # => "two"
@rash.nested.nested_three     # => "three"
@rash.nested_two.nested_two   # => 22
@rash.nested_two.nested_three # => 23
```

## Known Issue

You may have Hashie's warnings like this

```
WARN -- : You are setting a key that conflicts with a built-in method Hashie::Mash::Rash#varOne defined in Hashie::Mash::Rash. This can cause unexpected behavior when accessing the key as a property. You can still access the key via the #[] method.
```

if you want to disable this, use `disable_warnings`

https://github.com/hashie/hashie#mash

## Note on Patches/Pull Requests

* Fork the project.
* Make your feature addition or bug fix.
* Add tests for it. This is important so I don't break it in a future version unintentionally.
* Commit, do not mess with rakefile, version, or history. (if you want to have your own version, that is fine but bump version in a commit by itself I can ignore when I pull)
* Send me a pull request. Bonus points for topic branches.

## Copyright

* Copyright (c) 2010 Tom Cocca.
* Copyright (c) 2016 Shigenobu Nishikawa.

### Acknowledgements

* Intridea (https://github.com/intridea) for Hashie
* Mislav Marohnić (https://github.com/mislav) for contributions to Rash
* Steve Agalloco (https://github.com/spagalloco) for updating Rash to use bundler, rspec 2.5, hashie 1.0 and fixing some load dependencies

