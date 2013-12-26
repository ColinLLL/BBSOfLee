class WelcomeController < ApplicationController
  skip_before_filter :authorize
  
  def index
    @total_user = User.count
    @current_user = User.find_by_id(session[:user_id])
  end
end
