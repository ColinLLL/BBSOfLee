class ConsessionController < ApplicationController
  def new
  end

  def create
  	user = User.find_by_email(params[:email])
    if user and user.authenticate(params[:email], params[:password])
      session[:user_id] = user.id
      redirect_to admin_index_path
    else
      redirect_to consession_new_path, alert: "Invalid user/password combination"
    end
  end

  def destroy
  end
end
