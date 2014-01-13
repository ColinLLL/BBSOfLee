class PostsController < ApplicationController
  def index
    @current_user = User.find_by_id(session[:user_id])
    @posts = Post.page(params[:page]).per(5)
  end

  def myindex
    if @current_user = User.find_by_id(session[:user_id])
      @posts = @current_user.posts.page(params[:page]).per(5)
    else
      redirect_to login_path
    end
  end

  def new
    if @current_user = User.find_by_id(session[:user_id])
      @post = Post.new
    else
      redirect_to login_path
    end
  end

  def show
  	@post = Post.find(params[:id])
    @current_user = User.find_by_id(session[:user_id])
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = session[:user_id]
 
    if @post.save
      if @category = Category.where(category_params).take
      else
        @category = Category.new(category_params)
        @category.save
      end
      @post_category = PostsCategory.new(:category_id => @category.id, :post_id => @post.id)
      @post_category.save

      redirect_to @post
    else
      redirect_to 'new'
    end
  end
  
  private
    def post_params
      params.require(:post).permit(:title, :content)
    end

    def category_params
      params.require(:category).permit(:category_title)
    end
end
