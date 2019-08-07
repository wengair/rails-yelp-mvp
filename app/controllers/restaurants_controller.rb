class RestaurantsController < ApplicationController
  before_action :set_res, only: [:show]
  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(str_res_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private

  def set_res
    @restaurant = Restaurant.find(params[:id])
  end

  def str_res_params
    params.require(:restaurant).permit(:name, :address, :category, :phone_number)
  end
end
