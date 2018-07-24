class RestaurantsController < ApplicationController
<<<<<<< app/controllers/restaurants_controller.rb
  
  def new
    @restaurant = Restaurant.new
  end
  
  def create
    @restaurant = Restaurant.new(restaurant_params)
        
    respond_to do |format|
      if @restaurant.save
        format.html { redirect_to @restaurant, notice: 'restaurant was successfully created.' }
        format.json { render :show, status: :created, location: @restaurant }
      else
        format.html { render :new }
        format.json { render json: @restaurant.errors, status: :unprocessable_entity }
      end
    end
    
    def index
      @restaurants=Restaurant.all
    end
    def japanese
      @restaurants=Restaurant.all
    end
    def western
      @restaurants=Restaurant.all
    end
    def italian
      @restaurants=Restaurant.all
    end
    def french
      @restaurants=Restaurant.all
    end
    def chinese
      @restaurants=Restaurant.all
    end
    def others
      @restaurants=Restaurant.all

  private
    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
    end
  
    def restaurant_params
      params.require(:restaurant).permit(:name, :category, :overview, :hour, :tel, :price,:address, :image)
    end
end
