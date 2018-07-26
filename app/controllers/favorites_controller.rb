class FavoritesController < ApplicationController
  def create
    # Favs.create(user_id: ,restaurant_id: )
    favorite = current_user.favorites.create(restaurant_id: params[:restaurant_id])
    redirect_to blogs_url, notice: "#{favorite.blog.user.name}さんのブログをお気に入り登録しました"
  end
  def destroy
    
  end
end
