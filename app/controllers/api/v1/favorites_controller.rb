class FavoritesController < ApplicationController
  before_action :set_post
  before_action :current_user   # ログイン中のユーザーのみに許可（未ログインなら、ログイン画面へ移動）

  # お気に入り登録
  def create
    @shop = Shop.find(params[:id])
    if @current_user
      @favorite = Favorite.create(user_id: current_user.id, shop_id: @shop.id)
      render json: { favorited: true, favorite: @favorite }
    else
      render json: { status: 401, errors: ['ログイン、もしくわユーザー登録してください'] }
    end
  end

  # お気に入り削除
  def destroy
    @favorite = Favorite.find_by(user_id: @current_user.id, shop_id: @shop.id)
    @favorite.destroy
  end

  private
    def set_shop
      @shop = Shop.find(params[:shop_id])
    end
end
