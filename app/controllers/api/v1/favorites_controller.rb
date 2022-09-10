class Api::V1::FavoritesController < ApplicationController
  before_action :set_post
  # before_action :current_user

  # お気に入り登録
  def create
    if @current_user
      # ログイン中のユーザーのみに許可
    @favorite = Favorite.create(user_id: @current_user.id, shop_id: @shop.id)
    # if @favorite = Favorite.create(user_id: params[:user_id], shop_id: params[:shop_id])
      render json: { favorite: @favorite },
             status: 201
    else
      render json: { errors: ['ログイン、もしくわユーザー登録してください'] }
    end
  end

  # お気に入り削除
  def destroy
    if @favorite = Favorite.find_by(id: params[:favorite_id])
      @favorite.destroy
      render json: { favorite: @favorite }
      # status: 200
    else
      render json: { errors: ['お気に入りが存在しません']}
    end
  end

  private
    def set_shop
      @shop = Shop.find_by(id: params[:shop_id])
    end
end
