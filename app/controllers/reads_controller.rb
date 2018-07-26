class ReadsController < ApplicationController
  def index
    @articles = Article.all
    @reads = Read.where(user_id: current_user.id)
    #@favarticle = current_user.favarticles.find_by(article_id: @articles.ids)
  end
end
