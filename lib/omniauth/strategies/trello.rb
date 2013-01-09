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
          :name => raw_info['fullName'],
          :email => raw_info['email'],
          :nickname => raw_info['username'],
          :urls => {
            :profile => raw_info['url']
          }
        }
      end


      extra do
        {
          'raw_info' => raw_info
        }
      end

      def request_phase
        options[:authorize_params] = {
          :name => options['app_name']
        }
      end

      def raw_info
        @raw_info ||= MultiJson.decode(access_token.get('/1/members/me').body)
      end
    end
  end
end
