class CommentsController < ApplicationController
  def create
  	@current_user = User.find_by_id(session[:user_id])
  	@post = Post.find(params[:post_id])
  	#user_id = session[:user_id]
    @comment = @post.comments.create(params[:comment].permit(:body))
    @comment.user_id = @current_user.id
    @comment.save
    redirect_to post_path(@post)
  end
end
