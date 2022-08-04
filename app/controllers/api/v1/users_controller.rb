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
      render json: { status: 500, errors: ['ユーザー登録に失敗しました。', '正しいユーザーネーム・メールアドレス・パスワードを入力してください。'] }
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

end