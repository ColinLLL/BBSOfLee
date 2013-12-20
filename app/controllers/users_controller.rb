class UsersController < ApplicationController
  #skip_before_filter :authorize
  def new
    @user = User.new
  end
  def create
    @user = User.new(params[:user].permit(:username, :email, :password))
    if @user.save
      UserMailer.registration_confirmation(@user).deliver
      redirect_to admin_index_path
    else
      render 'new'
    end
  end
  def show
    @users = User.all
  end
end