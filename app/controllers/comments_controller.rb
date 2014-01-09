class CommentsController < ApplicationController
  def create
  	@post = Post.find(params[:post_id])
  	user_id = session[:user_id]
    @comment = @post.comments.create(params[:comment].permit(:body))
    @comment.user_id = user_id
    redirect_to post_path(@post)
  end
end
