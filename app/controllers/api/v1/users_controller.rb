module Api
  module V1
    class UsersController < ApplicationController
      def index
        @users = DummyTable.all
        render json:{
          users_table: @users
        }
      end
    end
  end
end