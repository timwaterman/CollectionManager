class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :require_user

  def current_user
      #puts "\n\nDo we ever even get here?\n\n\n"
      if @current_user.nil?
          #puts "\nHow about here?\n"
          @current_user = User.find(session[:user_id]) if session[:user_id]
          #return true
      end
  end
  helper_method :current_user

  def require_user
      if current_user
          return true
      end
      puts "\n\nWe are redirecting!!!!!!\n\n\n"
      redirect_to root_url
  end

end
