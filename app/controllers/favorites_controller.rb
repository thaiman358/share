class FavoritesController < ApplicationController
  def index
    @user = current_user
    @favs = @user.fav_restaurants
    @fav = current_user.favs.find_by(restaurant_id: @favs.ids)
  end
  
  def create
    fav = current_user.favs.create(restaurant_id: params[:restaurant_id])
  end

  def destroy
    fav = current_user.favs.find_by(id: params[:id]).destroy
  end
end
