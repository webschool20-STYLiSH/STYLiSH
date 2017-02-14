class CommentsController < ApplicationController
	def create
		@article = Article.find(params[:article_id])
		@comment = @article.comments.new(comment_params)
		# binding pry
		@comment.save
		redirect_to article_path(params[:article_id])
	end

	def destroy
		# @comment = Comment.find(params[:id])
		# @comment.destroy

		Comment.destroy(params[:id])
		redirect_to comments_user_path(current_user.id)
	end

	private
	def comment_params
		params.require(:comment).permit(:body, :image, :user_id, :article_id, :utf8, :authenticity_token, :comment, :commit, :article_id)
	end

end
