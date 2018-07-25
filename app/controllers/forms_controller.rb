class FormsController < ApplicationController
  protect_from_forgery :except => [:destroy]
  before_action :check_login, only: [:new, :show, :edit, :update, :destroy]
  def index
    arttype = params[:arttype]
    @restaurant = Restaurant.find_by(id: params[:restaurant_id])
    @preference = Preference.where(email: params[:email]).find_by(user_id: current_user.id)
    if arttype == '2' then #社外＋初回は料理に関する記事を表示
      @article = Article.where(arttype: arttype, restaurant_id: @restaurant.id).last
    else　#社内、社外の初回以外は事例・業界に関する記事を表示（1:事例、3:業界）
      @article = Article.where(arttype: arttype, industry: current_user.industry).last
    end
    Visit.create(user_id: current_user.id, restaurant_id: @restaurant.id)
    Read.create(user_id: current_user.id, article_id: @article.id)
  end

  def new
    @restaurant = Restaurant.first
  end

  def create
    
  end

  def show
    
  end

  def confirm
    
  end

  def edit
    
  end
  
  def reserve
    
  end
  
  private
  def check_login
    if not logged_in?
      redirect_to new_session_path  
    end
  end
end

