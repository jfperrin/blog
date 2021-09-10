class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    user = User.create!(user_params)
    session[:user_id] = user.id
    redirect_to users_url
  end

  def new
    @user = User.new
  end

  private

  def user_params
    params.require(:user).permit(:name, :login, :avatar, :description)
  end
end