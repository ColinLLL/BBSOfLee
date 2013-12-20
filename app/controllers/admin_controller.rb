class AdminController < ApplicationController
  #skip_before_filter :authorize
  def index
    #@user = User.find(params[:id])
    @total_user = User.count
    @current_user = User.find_by_id(session[:user_id])
  end
end
