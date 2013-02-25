# Omniauth::Trello

An Omniauth strategy for Trello's OAuth 1.0 authentication.

Read the [Trello API documentation](https://trello.com/docs/) for more information on obtaining an application key and secret.

## Installation

Add this line to your application's Gemfile:

    gem 'omniauth-trello'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-trello

## Usage

`OmniAuth::Strategies::Trello` is a Rack middleware strategy for the OmniAuth gem. Look at the [OmniAuth](https://github.com/intridea/omniauth) project page for more information on how to use OmniAuth.

###Rails Example

Place this into `config/initializers/omniauth.rb`:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :trello, ENV['TRELLO_KEY'], ENV['TRELLO_SECRET'],
  app_name: "APP_NAME", scope: 'read,write', expiration: '1day'
end
```

`scope` if omitted, it defaults to "read". Or it can have the value "read,write"

`expiration` if omitted, it defaults to 30 days (Trello default). Or it can have the values: "never", "1day", "30days"

More info in [the Trello docs](https://trello.com/docs/gettingstarted/index.html#getting-a-token-from-a-user)

## Known Issues

Any help with these would be appreciated:

* [#1](https://github.com/joshrowley/omniauth-trello/issues/1): For some user authentications, the raw info returned from Trello has a null value for email
* [#2](https://github.com/joshrowley/omniauth-trello/issues/2): The `app_name` authorization is correctly showing up at the Trello authorization page as the `name` parameter per the documentation, however Trello still displays "An Unknown Application"

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
