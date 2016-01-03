# Omniauth Misfit

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

## Copyright

Copyright (c) 2016 Jeff Judge. See [LICENSE](https://github.com/jjudge/omniauth-misfit/blob/master/LICENSE) for details.
