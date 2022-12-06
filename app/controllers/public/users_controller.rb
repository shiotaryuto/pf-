class Public::UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @games = @user.games

  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
       redirect_to public_user_path(:id)
    # else
    #   @customer = Customer.all
    #   render :edit
    end
  end
  def unsubscribe

  end

  def withdrawal
    @user = current_user
    @user.update(is_active: false)
    reset_session
    redirect_to public_top_path
  end

  private
def user_params
  params.require(:user).permit(:id, :first_name, :last_name, :first_name_kana, :last_name_kana, :nickname, :email)
end
end
