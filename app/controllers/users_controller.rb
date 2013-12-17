class UsersController < ApplicationController
  #skip_before_filter :authorize
  def new
    @user = User.new
  end
  def create
    @user = User.new(params[:user].permit(:username, :email, :password))
    if @user.save
      UserMailer.registration_confirmation(@user).deliver
      redirect_to @user
    else
      render 'new'
    end
  end
  def show
    @user = User.find(params[:id])
  end
end