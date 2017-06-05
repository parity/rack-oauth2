module Rack
  module OAuth2
    class Client
      class Grant
        class SocialLogin < Grant
          attr_required :email, :provider, :uid, :social_access_token
        end
      end
    end
  end
end