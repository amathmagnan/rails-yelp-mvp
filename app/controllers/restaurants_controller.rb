class RestaurantsController < ApplicationController
    before_action :set_restaurant, only: [:show, :edit, :update, :destroy]


  def index
    @restaurants = Restaurant.all
  end

#restaurants = show ?
def restaurants
    @restaurants = Restaurant.all
    #creer variable disponible dans la vue
    #@review = Review.new
  end



def home
    @restaurants = Restaurant.all
end

#show = restaurant ? = no linked yet
def show
  @restaurant = Restaurant.find(params[:id])
  #@review = Review.new
  end

  def new
    @restaurant = Restaurant.new
  end

   def edit
  end

  #not sure from here ---------

 def create
    @restaurant = Restaurant.new(restaurant_params)

    respond_to do |format|
      if @restaurant.save
        format.html { redirect_to @restaurant, notice: 'Restaurant was successfully created.' }
        format.json { render :show, status: :created, location: @restaurant }
      else
        format.html { render :new }
        format.json { render json: @restaurant.errors, status: :unprocessable_entity }
      end
    end
  end
def update
    respond_to do |format|
      if @restaurant.update(restaurant_params)
        format.html { redirect_to @restaurant, notice: 'Restaurant was successfully updated.' }
        format.json { render :show, status: :ok, location: @restaurant }
      else
        format.html { render :edit }
        format.json { render json: @restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  #Delete block
  def destroy
    @restaurant.destroy
    respond_to do |format|
      format.html { redirect_to restaurants_url, notice: 'Restaurant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
    end

    # be aware of sneaky hackers
    def restaurant_params
      params.require(:restaurant).permit(:name, :address, :phone_number, :category)
    end
end



