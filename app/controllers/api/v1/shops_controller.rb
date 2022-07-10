class Api::V1::ShopsController < ApplicationController

  def new
  end

  def index 
    @shops = Shop.all
    render json: @shops
  end

  def show
    @shop = Shop.find(params[:id])
    render json: @shop
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

  def keyword
    if params[:name]
      shops = Shop.where(name: params[:name])
    elsif params[:keyword]
      keywords = params[:keyword].split(/[[:blank:]]+/).select(&:present?)
      oshops = []
      keywords.each do |keyword|
        shops += Office.where('name LIKE (?) OR address LIKE (?) OR near_station LIKE (?) OR introduction LIKE (?) OR company LIKE (?)',"%#{keyword}%", "%#{keyword}%", "%#{keyword}%", "%#{keyword}%", "%#{keyword}%")
      end
    else
      pagy, shops = pagy(Shop.all)
      pagy_headers_merge(pagy)
    end
    render json: shops
  end

end
