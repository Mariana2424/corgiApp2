class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  def current_user2
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
