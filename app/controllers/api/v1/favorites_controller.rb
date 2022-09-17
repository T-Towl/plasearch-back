class Api::V1::FavoritesController < ApplicationController

  # お気に入り登録
  def create
    set_shop
    if @favorite = current_user.favorites.create(user_id: @current_user.id, shop_id: params[:shop_id])
    # ログイン中のユーザーのみに許可
      render json: { favorite: @favorite },
             status: :created #201
    else
      render json: { errors: ['ログイン、もしくわユーザー登録してください'] }, 
             status: :ok #200
    end
  end

  # お気に入り削除
  def destroy
    if  @favorite = current_user.favorites.find_by(id: params[:id])
     # ログイン中のユーザーのみに許可
      @favorite.destroy
      render json: { favorite: @favorite },
             status: :no_content #204
    else
      render json: { errors: ['お気に入りが存在しません']},
             status: :conflict #409
    end
  end

  private
    def set_shop
      @shop = Shop.find_by(id: params[:shop_id])
    end
end
