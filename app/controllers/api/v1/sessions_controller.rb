module Api
  module V1
    class SessionsController < ApplicationController
      def login
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
          render json: { user: user , token: AuthenticationService.new(user).call} # This is a placeholder for the token that will be generated by the JWT AuthenticationService
        else
          render json: { error: 'Invalid username or password' }, status: :unauthorized
        end
      end
    end
  end
end
