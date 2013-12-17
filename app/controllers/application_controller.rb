class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  #before_filter :authorize
  protected
    def authorize
      unless User.find_by_email(session[:email])
        redirect_to consession_new_path, notice: "Please log in"
      end
    end
end
