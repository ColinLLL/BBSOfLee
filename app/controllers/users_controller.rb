class UsersController < ApplicationController
  #skip_before_filter :authorize
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user].permit(:username, :email, :password))
    if @user.save
      UserMailer.registration_confirmation(@user).deliver
      session[:user_id] = @user.id
      redirect_to welcome_index_path
    else
      render 'new'
    end
  end

  def show
    @users = User.all
  end
end