class ArticlesController < ApplicationController
  before_action :set_article, only:[:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  def new
  	@article = Article.new
  end

  def index
  	@articles = Article.page(params[:page]).per(12)
  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to @article
  end

  def show
  	@article = Article.find(params[:id])
    @comment = Comment.new
  end

  def edit
  	@article = Article.find(params[:id])
  end

  def update
  	@article.update(article_params)
  	redirect_to article_path(@article.id)
  end

  def destroy
  	@article = Article.find(params[:id])
  	@article.destroy
  	redirect_to articles_path
  end

  private
  	def article_params
  		params.require(:article).permit(:title, :body, :image, :interest_list, :user_id)
  	end
  	def set_article
  		@article = Article.find(params[:id])
  	end

end
