class CommentsController < ApplicationController
	before_action :set_post
	def create
		@comment = @post.comments.build(comment_params)
		@comment.user_id = current_user.id

		if @comment.save
			respond_to do |format|
			format.html { redirect_to root_path}
			format.js
			end
			
		else
			flash[:alert] = "Check the comment form, something went wrong!"
			render root_path
		end
	end
	def destroy
		@comment = @post.comment.find(params[:id])
		@comment.destroy
	end
	private

	def comment_params
		params.require(:comment).permit(:content)
		
	end

	def set_post
		@post = Post.find(params[:post_id])
	end
end
