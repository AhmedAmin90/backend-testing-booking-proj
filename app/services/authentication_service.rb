class AuthenticationService
    ALGORITHM_TYPE = 'HS256'
    HMAC_SECRET = ENV["HMAC_SECRET"]

    def initialize(user = nil, token = nil)
      @user = user
      @token = token
      @id = nil
    end

    def call
      # To generate the token in the login: AuthenticationService.new(user).call
      # To authenticate the token in the current user: AuthenticationService.new(nil, token).call
      if @user.present?
        encode_user
      elsif @token.present?
        decode_token
        check_authenticity
      end
    end

    def encode_user
      payload = {id: @user.id,  exp: 2.days.from_now.to_i}
      JWT.encode payload, HMAC_SECRET, ALGORITHM_TYPE
    end

    def decode_token
      decoded_token = JWT.decode @token, HMAC_SECRET, true, { algorithm: ALGORITHM_TYPE }
      decoded_token.first
      @id = decoded_token.first.values_at("id")
    end

    def check_authenticity
      @authenticated_user = User.find(@id) rescue nil
      if @authenticated_user
        return @authenticated_user
      else
        return nil
      end
    end

end
