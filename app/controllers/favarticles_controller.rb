class FavarticlesController < ApplicationController
  def index
      @user = current_user
      @fav_articles = @user.favarticle_articles
      @favarticle = current_user.favarticles.find_by(article_id: @fav_articles.ids)
  end
  
  def create
    favarticle = current_user.favarticles.create(article_id: params[:article_id])
  end

  def destroy
    favarticle = current_user.favarticles.find_by(id: params[:id]).destroy
  end
end
