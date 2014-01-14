class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user].permit(:username, :email, :password, :password_confirmation))
    if @user.save
      UserMailer.registration_confirmation(@user).deliver
      redirect_to login_path
    else
      render 'new'
    end
  end

  def show
    @users = User.all
  end
end