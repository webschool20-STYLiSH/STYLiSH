class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    User.update(params.require(:user).permit(:name, :email, :profile, :gender, :country))
    redirect_to user_path(@user.id)
  end

end