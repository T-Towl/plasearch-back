class Api::V1::ShopsController < ApplicationController

  def new
  end

  def index 
    @shops = Shop.all
    render json: @shops
  end

  def create
    @shop = Shop.create(name: params[:name])
    render json: @shop
  end

  def update
    @shop = Shop.find(params[:id])
    @shop.update_attributes(name: params[:name])
    render json: @shop
  end

  def destroy
    @shop = Shop.find(params[:id])
    if @shop.destroy
      head :no_content, status:ok
    else
      render json: @shop.errors, status: :unprocessable_entity
    end
  end

end
