class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :name)
  end


end