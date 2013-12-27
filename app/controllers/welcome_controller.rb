class WelcomeController < ApplicationController
  
  def index
    @total_user = User.count
    @current_user = User.find_by_id(session[:user_id])
  end
end
