class UserController < ApplicationController
  def index
  end

  def show
    @articles = Article.all
  end

  def edit
  end

  def update
  end

  def delete
  end

  def follows
    @user = @User.find(params[:id])
  end

  def followers
    @user = @User.find(params[:id])
  end

end