class FormsController < ApplicationController
  protect_from_forgery :except => [:destroy]
  before_action :check_login, only: [:new, :show, :edit, :update, :destroy]
  def index
    @preference = Preference.where(email: params[:email]).find_by(user_id: current_user.id)
    @article = Article.where(arttype: params[:arttype]).last
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

