class Api::V1::UsersController < ApplicationController

  before_action :current_user

  def show
    @user = User.find(params[:id])
    favorites = Favorite.where(user_id: @current_user.id).pluck(:shop_id)  # ログイン中のユーザーのお気に入りのshop_idカラムを取得
    @favorite_list = Shop.find(favorites)     # shopsテーブルから、お気に入り登録済みのレコードを取得
    render json: { @user, @favorite_list }
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