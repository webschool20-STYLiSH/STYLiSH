class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @articles = @user.articles
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end
    # @user = params[:user]
    # User.update(params.require(:user).permit(:name, :email, :profile, :gender, :country, :image))
    # redirect_to user_path(@user.id)

#  end

      # file = params[:user][:image]

    # if !file.nil?
    #   file_name = file.original_filename
    #   File.open("public/user_image/#{file_name}", 'wb')
    #     {|f| f.write(file.read)}

    #   @user.image = file_name
    # end


  def follows
    @user = User.find(params[:id])
  end

  def followers
    @user = User.find(params[:id])
  end

  def favorites
    @user = User.find(params[:id])
  end

private
  def user_params
    params.require(:user).permit(:name, :email, :profile, :gender, :country, :image)
  end



end