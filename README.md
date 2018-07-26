# Omniauth::Trello

An Omniauth strategy for Trello's OAuth 1.0 authentication.

Read the [Trello API documentation](https://trello.com/docs/) for more information on obtaining an application key and secret.

## Installation

Add this line to your application's Gemfile:

    gem 'omniauth-trello'

And then bundle:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-trello

## Usage

`OmniAuth::Strategies::Trello` is a Rack middleware strategy for the OmniAuth gem. Look at the [OmniAuth](https://github.com/intridea/omniauth) project page for more information on how to use OmniAuth.

### Rails Example

Place this into `config/initializers/omniauth.rb`:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :trello, ENV['TRELLO_KEY'], ENV['TRELLO_SECRET'],
  app_name: "APP_NAME", scope: 'read,write,account', expiration: 'never'
end
```

## Scope

The `scope` argument defaults to 'read'.

Specify other scopes with a comma separated string (no spaces), example: 'read,write,account'

### `read` scope
* Read all of your boards and organizations

### `write` scope
* Create and update cards, lists and boards
* Make comments for you

### `account` scope
* Read your email address

Contrary to Trello's documentation, user email is only given when using the `read,write,account` or `read,account` scope.

`expiration` if omitted, it defaults to 30 days (Trello default). You can use arguments like: "never", "1day", "30days"

If you don't specify 'never', Trello will ask for user approval on every subsequent login and application will duplicate on the user's account settings page in Trello. I recommend using the `never` scope.

More info in [the Trello docs](https://trello.com/docs/gettingstarted/index.html#getting-a-token-from-a-user)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
