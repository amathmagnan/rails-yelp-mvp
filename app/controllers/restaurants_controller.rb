class RestaurantsController < ApplicationController




  def index
    @restaurants = Restaurant.all
  end


 def home

  end


  def show
        @restaurant = Restaurant.find(params[:id])
    end


end

