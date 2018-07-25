class ReadsController < ApplicationController
  def index
    @articles = Article.all
    @reads = Read.where(user_id: current_user.id)
  end
end
