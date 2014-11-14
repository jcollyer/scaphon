class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      if params[:remember_me]
        cookies.permanent[:auth_token] = user.auth_token
      else
        cookies[:auth_token] = user.auth_token
      end
      flash[:notice] = "You have successfully logged in!"
      redirect_to root_url
    else
      flash[:notice] = "Invalid email or password."
      render "new"
    end
  end

  def destroy
    cookies.delete(:auth_token)
    flash[:notice] = "Logged out!"
    redirect_to root_url
  end
end
