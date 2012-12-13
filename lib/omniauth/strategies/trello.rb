require 'omniauth-oauth'
require 'multi_json'

module OmniAuth
  module Strategies
    class Trello < OmniAuth::Strategies::OAuth
      option :name, "trello"
      option :client_options, { :site => "https://trello.com",
                                :request_token_path => "/1/OAuthGetRequestToken",
                                :access_token_path => "/1/OAuthGetAccessToken",
                                :authorize_path => "/1/OAuthAuthorizeToken" }

      uid do
        raw_info['id']
      end

      info do
        {
          :name => raw_info['fullName']
        }
      end


      extra do
        {
          'raw_info' => raw_info
        }
      end

      def raw_info
        @raw_info ||= MultiJson.decode(access_token.get('/1/members/me').body)
      end
    end
  end
end
