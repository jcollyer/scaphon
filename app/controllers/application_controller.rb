class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user
  helper_method :admin

  private

  def current_user
    @current_user ||= User.find_by_auth_token(cookies[:auth_token]) if cookies[:auth_token]
  end

  def admin
    if current_user
      true if current_user.admin
    else
      false
    end
  end

  def authorize
    unless admin
      flash[:error] = "unauthorized access"
      redirect_to :root
      false
    end
  end
end
