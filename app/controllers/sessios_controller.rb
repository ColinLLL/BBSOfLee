class SessiosController < ApplicationController
  def new
  end

  def create
  	user = User.find_by_name(params[:email])
    if user and user.authenticate(params[:password])
      #sessio[:user_id] = user.id
      redirect_to sessios_url
    else
      redirect_to 'new'
    end
  end

  def destroy
  	session[:user_id] = nil
    redirect_to store_url, notice: "Logged out"
  end
end
