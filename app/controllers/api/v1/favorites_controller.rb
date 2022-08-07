class FavoritesController < ApplicationController
  before_action :set_post
  before_action :current_user   # ログイン中のユーザーのみに許可（未ログインなら、ログイン画面へ移動）

  # お気に入り登録
  def create
      @favorite = Favorite.create(user_id: current_user.id, shop_id: @shop.id)
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
