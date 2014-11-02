class UsersController < ApplicationController
  # before_filter :authorize
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    # @user = User.new(params[:user])
    @user = User.new(user_params)
    if @user.save
      redirect_to root_url
      flash[:notice] = "You Signed up successfully"
      flash[:color]= "valid"
    else
      flash[:notice] = "Form is invalid"
      flash[:color]= "invalid"
      render "new"
    end
  end

  private
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

    def user_params
      params.require(:user).permit(:email, :password_hash, :password)
    end
end
