class LikesController < ApplicationController
	before_action :authenticate_user!
	def create
        @article = Article.find(params[:article_id])
        @like = current_user.likes.build(article: @article)

        if @like.save
          redirect_to articles_url, notice: "お気に入りに登録しました"
        else
          redirect_to articles_url, alert: "この投稿はお気に入りに登録できません"
        end
    end

    def destroy
    	@article = Article.find(params[:article_id])
        @like = current_user.likes.find_by!(article_id: @article)
        @like.destroy
        redirect_to articles_url, notice: "お気に入りを解除しました"
    end
end
