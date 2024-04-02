class ApplicationController < ActionController::API
  rescue_from JWT::DecodeError , JWT::ExpiredSignature, JWT::InvalidIssuerError , JWT::InvalidIatError, with: :handle_expired_token


  # This method should return the current user, which is the user that is logged in. This method will be used in the controllers to get the current user.
  # This method uses the Authorization header to get the token, then it decodes the token to get the user.
  # We will use the AuthenticationService for this
  def current_user
    # Logic here
  end

  private

  def handle_expired_token
    render json: { error: "Not Allowed, please back to support" }, status: :unauthorized
  end

end
