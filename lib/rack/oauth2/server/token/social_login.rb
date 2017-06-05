module Rack
  module OAuth2
    module Server
      class Token
        class SocialLogin < Abstract::Handler
          def _call(env)
            @request  = Request.new(env)
            @response = Response.new(request)
            super
          end

          class Request < Token::Request
            attr_required :email, :provider, :uid, :social_access_token

            def initialize(env)
              super
              @grant_type = :social_login
              @email   = params['email']
              @provider   = params['provider']
              @uid   = params['uid']
              @social_access_token = params['social_access_token']
              attr_missing!
            end
          end
        end
      end
    end
  end
end