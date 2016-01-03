require 'omniauth-oauth2'
require 'multi_json'

module OmniAuth
  module Strategies
    class Misfit < OmniAuth::Strategies::OAuth2

      DEFAULT_SCOPE = 'public,birthday,email'

      option :name, 'misfit'

      option :client_options, {
        :site               => 'https://api.misfitwearables.com',
        :authorize_url => '/auth/dialog/authorize',
        :token_url => '/auth/tokens/exchange'
      }

      uid do
        raw_info['userId']
      end

      info do
        {
          :name             => raw_info['name'],
          :email            => raw_info['email'],
          :gender           => raw_info['gender'],
          :birthday         => raw_info['birthday'],
          :avatar           => raw_info['avatar']
        }
      end

      extra do
        {
          :raw_info => raw_info
        }
      end

      def request_phase
        options[:authorize_params] = client_params.merge(options[:authorize_params])
        super
      end

      def auth_hash
        OmniAuth::Utils.deep_merge(super, client_params.merge({:grant_type => 'authorization_code'}))
      end

      def raw_info
        @raw_info ||= MultiJson.load(access_token.get('/move/resource/v1/user/me/profile').body)
      end

      private
      def client_params
        {:client_id => options[:client_id], :redirect_uri => callback_url, :response_type => 'code', :scope => DEFAULT_SCOPE}
      end
    end
  end
end
