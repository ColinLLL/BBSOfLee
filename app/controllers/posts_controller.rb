class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all #where(users_id: session[:user_id])
    @current_user = User.find_by_id(session[:user_id])
  end

  def show
    @current_user = User.find_by_id(session[:user_id])
  end

  def new
    @current_user = User.find_by_id(session[:user_id])
    @post = Post.new
  end

  def edit
    @current_user = User.find_by_id(session[:user_id])
  end

  def create
    @post = Post.new(post_params)
    #@post.users_id = session[:user_id]

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render action: 'show', status: :created, location: @post }
      else
        format.html { render action: 'new' }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url }
      format.json { head :no_content }
    end
  end

  private

    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :content, :seltype, :cata, :user_id)
    end
end
