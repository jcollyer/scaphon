class UsersController < ApplicationController
  # before_filter :authorize
  helper_method :sort_column, :sort_direction
  def index
    @users = User.order(sort_column + " " + sort_direction)
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      UserMailer.welcome_email(@user).deliver
      redirect_to root_url, notice: 'your logged in!'
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
      params.require(:user).permit(:email, :password, :first_name, :last_name,
                                   :city, :state, :zip, :phone_home, :phone_work, :nurse,
                                   :institution, :rn_id, :state_registerd, :aphon_member,
                                   :street_address, :aphon_member_number,
                                   :aphon_expiration_date, :password_reset_sent_at)
    end

    def sort_column
      User.column_names.include?(params[:sort]) ? params[:sort] : "email"
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end
end
