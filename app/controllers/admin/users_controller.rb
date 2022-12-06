class Admin::UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to admin_user_path(@user.id)
  end

  private
  def user_params
  params.require(:user).permit(:id, :first_name, :last_name, :first_name_kana, :last_name_kana, :email, :is_active, :nickname)
  end
end
