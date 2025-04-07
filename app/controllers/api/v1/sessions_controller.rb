module Api
  module V1
    class SessionsController < Api::V1::ApplicationController
      def login
        user = User.find_by(email: user_params[:email])
        
        if user && user.authenticate(user_params[:password]) 
          token = JsonWebToken.encode(user_id: user.id)
          allowed_token = AllowedToken.create(
            token: token,
            expires_at: 24.hours.from_now
          )
          render json: { token: token, user: user }
        else
          render json: { error: 'Invalid credentials' }, status: :unauthorized
        end
      end

      def logout
        token = request.headers['token']
        decoded = JsonWebToken.decode(token)

        AllowedToken.find_by(token: token).destroy if AllowedToken.find_by(token: token)
    
        if decoded
          render json: { message: 'Logged out successfully', status: 200 }
        else
          render json: { error: 'Invalid token' }, status: :unauthorized
        end
      end

      private

      def user_params
        params.require(:user).permit(:email, :password)
      end
    end
  end
end