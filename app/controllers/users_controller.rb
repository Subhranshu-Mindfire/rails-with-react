class UsersController < ApplicationController
  def index
    @users = DummyTable.all
    render json:{
      users: @users
    }
  end
end