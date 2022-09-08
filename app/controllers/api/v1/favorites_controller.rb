class Api::V1::FavoritesController < ApplicationController
  # before_action :set_shop

  # お気に入り登録
  def create
    # current_user # ログイン中のユーザーのみに許可
    # if @current_user 
    #   @favorite = Favorite.create(user_id: @current_user.id, shop_id: params[:shop_id])
    if @favorite = Favorite.create(user_id: params[:user_id], shop_id: params[:shop_id])
      render json: { favorited: true, favorite: @favorite },
             status: :created
    else
      render json: { favorited: false, errors: ['ログイン、もしくわユーザー登録してください'] }
    end
  end

  # お気に入り削除
  def destroy
    if @favorite = Favorite.find_by(id: params[:favorite_id])
      @favorite.destroy
      render json: { deleted: true }
    else
      render json: { deleted: false, errors: ['お気に入りが存在しません']}
    end
  end

  private
    # def set_shop
    #   @shop = Shop.find_by(id: params[:shop_id])
    # end
end
