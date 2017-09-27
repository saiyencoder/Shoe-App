class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :calculate_cart_count           #Before every action, this will run

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user

  def calculate_cart_count
    if current_user
      @cart_count = current_user.current_cart.count
    else
      @cart_count = 0
    end
  end

  def authenticate_user!
    redirect_to "/login" unless current_user
  end

  def authenticate_admin!
    redirect_to '/' unless current_user && current_user.admin
  end

end
