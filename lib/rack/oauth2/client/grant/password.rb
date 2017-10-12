module Rack
  module OAuth2
    class Client
      class Grant
        class Password < Grant
          attr_required :login, :password
        end
      end
    end
  end
end