class Api::V1::FavoritesController < ApplicationController
  # before_action :set_post
  before_action :current_user   # ログイン中のユーザーのみに許可（未ログインなら、ログイン画面へ移動）

  # お気に入り登録
  def create
    # if @current_user
    # @favorite = Favorite.create(user_id: current_user.id, shop_id: @shop.id)
    if @favorite = Favorite.create(user_id: params[:user_id], shop_id: params[:shop_id])
      render json: { favorited: true, favorite: @favorite },
             status: :created  
    else
      render json: { errors: ['ログイン、もしくわユーザー登録してください'] },
             status: :conflict
    end
  end

  # お気に入り削除
  def destroy
    if @favorite = Favorite.find_by(id: params[:favorite_id])
      @favorite.destroy
      render status: :no_content
    else
      render json: { errors: ['お気に入りが存在しません']},
             status: :conflict
    end
  end

  private
    # def set_shop
    #   @shop = Shop.find(params[:shop_id])
    # end
end
