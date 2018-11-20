class CommentsController < ApplicationController
	def create
		@article = Article.find(params[:article_id])

		if user_signed_in?
			comment_params.values.first[0] = current_user.name
		else
			comment_params.values.first[0] = "Anonymous"
		end

		@comment = @article.comments.create(comment_params)
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
