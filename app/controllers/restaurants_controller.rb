class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: %i[show edit]
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def show; end

  def create
    @restaurant = Restaurant.new(restaurant_params)
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :rating)
  end
end
