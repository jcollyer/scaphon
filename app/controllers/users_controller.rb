class UsersController < ApplicationController
  # before_filter :authorize
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
    # binding.pry
  end

  def create
    # @user = User.new(params[:user])
    @user = User.new(user_params)
    if @user.save
      redirect_to root_url
    else
      render "new"
    end
  end

  def update
    @user = User.find(params[:id])
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

  private
    def set_supporter
      @user = User.find(params[:id])
    end
    def user_params
      params.require(:user).permit(:email, :password_hash, :password, :first_name, :last_name,
                                   :city, :state, :zip, :phone_home, :phone_work, :nurse,
                                   :institution, :rn_id, :stage_registerd, :aphon_member,
                                   :scaphon_member, :street_address, :aphon_member_number,
                                   :aphon_expiration_date)
    end
end
