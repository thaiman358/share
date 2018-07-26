class FavoritesController < ApplicationController
  def index
    @user = current_user
    @favs = @user.fav_restaurants
    @fav = current_user.favs.find_by(restaurant_id: @favs.ids)
  end
  
  def create
    @fav = current_user.favs.create(restaurant_id: params[:restaurant_id])
    if @fav.save
      redirect_to restaurant_path(params[:restaurant_id])      
    end
  end

  def destroy
    @fav = current_user.favs.find_by(id: params[:id]).destroy
    if @fav.save
      redirect_to restaurant_path(params[:restaurant_id])
    end
  end
end
