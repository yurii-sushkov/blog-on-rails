class CommentsController < ApplicationController
	def create
		@article = Article.find(params[:article_id])
		opts = comment_params

		if user_signed_in?
			opts[:commenter] = current_user.name
		else
			opts[:commenter] = "Anonymous"
		end

		@comment = @article.comments.create(opts)
		redirect_to article_path(@article)
	end

	def destroy
		@article = Article.find(params[:article_id])
		@comment = @article.comments.find(params[:id])
		@comment.destroy
		redirect_to article_path(@article)
	end

	private
	def comment_params
		params.require(:comment).permit(:commenter, :body)
	end
end
