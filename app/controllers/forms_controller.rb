class FormsController < ApplicationController
  protect_from_forgery :except => [:destroy]
  before_action :check_login, only: [:new, :show, :edit, :update, :destroy]
  def index
    
  end

  def new
    @restaurants = Restaurants.where(id: 1)
  end

  def create
    
  end

  def show
    
  end

  def confirm
    
  end

  def edit
    
  end
  
  # メソッドとして切り出し。privateを指定することで、BlogsControllerクラス内でしか呼び出せない
  private
  def check_login
    if not logged_in?
      redirect_to new_session_path
    end
  end
end

