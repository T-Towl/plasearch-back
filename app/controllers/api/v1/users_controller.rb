class Api::V1::UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    render json: @user
  end

    # signup
  def create
    @user = User.new(user_params)

    if @user.save
      login!
      render json: { status: :created, user: @user }
    else
      render json: { status: 500 }
    end
  end

  # def create
  #   @user = User.new(user_params)
  #   if @user.save
  #     # 保存の成功をここで扱う。
  #   else
  #     render 'new'
  #   end
  #   render json: @user
  # end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

end
