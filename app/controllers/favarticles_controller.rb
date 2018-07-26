class FavarticlesController < ApplicationController
  def index
  end
  def create
    favarticle = current_user.favarticles.create(article_id: params[:article_id])
  end

  def destroy
    favarticle = current_user.favarticles.find_by(id: params[:id]).destroy
  end
end
