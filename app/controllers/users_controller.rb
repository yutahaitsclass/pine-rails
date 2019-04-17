class UsersController < ApplicationController
  # before_action :authenticate_user 
  def new
    @user=User.new
  end

  def create
    # render plain:params.inspect
    @user = User.new(user_params)
    if @user.save
      session[:user_id]=@user.id
      redirect_to root_url
    else
      render "new"
    end
  end

  private 
  def user_params
     params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
