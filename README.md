# OmniAuth Misfit

[![Gem Version](http://img.shields.io/gem/v/omniauth-misfit.svg)][gem]

[gem]: https://rubygems.org/gems/omniauth-misfit

OmniAuth strategy for the [Misfit API](https://build.misfit.com/docs/cloudapi/get_started)

## Installation

Add this line to your application's `Gemfile`:

    gem 'omniauth-misfit'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-misfit

## Usage

First, you'll need to register your application with Misfit to obtain a consumer key and secret at [build.misfit.com](https://build.misfit.com/signup).

Next, add the strategy to your `Gemfile` alongside OmniAuth:

```ruby
gem 'omniauth'
gem 'omniauth-misfit'
```

Then integrate the strategy into your middleware:

```ruby
use OmniAuth::Builder do
  provider :misfit, ENV['MISFIT_CONSUMER_KEY'], ENV['MISFIT_CONSUMER_SECRET']
end
```

In Rails, you'll want to add to the middleware stack:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :misfit, ENV['MISFIT_CONSUMER_KEY'], ENV['MISFIT_CONSUMER_SECRET']
end
```

## Contributing
Please! You know the drill.

## License

[MIT](https://github.com/jjudge/omniauth-misfit/blob/master/LICENSE)
