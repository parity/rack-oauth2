module Rack
  module OAuth2
    class AccessToken
      class Legacy < AccessToken
        def initialize(attributes = {})
          super
          self.expires_in = (
            self.expires_in ||
            attributes[:expires]
          ).try(:to_i)
          self.created_at = (
            self.created_at ||
            attributes[:created_at]
          ).try(:to_i)
        end

        def authenticate(request)
          request.header["Authorization"] = "OAuth #{access_token}"
        end
      end
    end
  end
end