require 'spec_helper'
require_relative '../../../lib/omniauth/strategies/trello'

describe OmniAuth::Strategies::Trello do
  subject do
    OmniAuth::Strategies::Trello.new({})
  end

  context "client options" do
    it "should have correct site" do
      expect(subject.options.client_options.site).to eq("https://trello.com")
    end

    it "should have correct authorize path" do
      expect(subject.options.client_options.authorize_path).to eq("/1/OAuthAuthorizeToken")
    end

    it "should have the correct request token path" do
      expect(subject.options.client_options.request_token_path).to eq("/1/OAuthGetRequestToken")
    end

    it "should have the correct access token path" do
      expect(subject.options.client_options.access_token_path).to eq("/1/OAuthGetAccessToken")
    end
  end
end
