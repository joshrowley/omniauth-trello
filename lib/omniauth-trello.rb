require "omniauth-trello/version"
require "omniauth-oauth"

module Omniauth
  module Trello
    class Trello < OmniAuth::Strategies::OAuth
      option :name, "Trello"
      option :client_options, { :site => "https://trello.com",
                                :request_token_path => "/1/OAuthGetRequestToken",
                                :access_token_path => "/1/OAuthGetAccessToken",
                                :authorize_path => "/1/OAuthAuthorizeToken" }

      
    end
  end
end
