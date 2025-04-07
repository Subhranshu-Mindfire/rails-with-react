module Api
  module V1
    class UsersController < ApplicationController
      def index
        if authenticate_request()
          @users = DummyTable.all
          render json:{
            users_table: @users
        }
        else
          render json: { error: 'Not Authorized' }, status: :unauthorized
        end
      end


      private

      def authenticate_request
        token = request.headers['token']
        decoded = JsonWebToken.decode(token)
        
        if decoded
          return true
        else
          return false
        end
      end
    end
  end
end