class Admin::UsersController < ApplicationController
   before_action :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def approve_store
    @user = User.find(params[:id])
    @user.approve!
    redirect_to :back
  end



  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to :back
  end

  private

  def user_params
    params.require(:user).permit(:is_admin)
  end
end
