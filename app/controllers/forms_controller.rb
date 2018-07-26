class FormsController < ApplicationController
  protect_from_forgery :except => [:destroy]
  before_action :check_login, only: [:index, :new]
  def index
    if params[:email] && params[:arttype] #emailとarttypeが入力されているかチェック
      if Preference.where(email: params[:email]).find_by(user_id: current_user.id)  #会食相手の好みが登録されているかチェック
        arttype = params[:arttype]
        @restaurant = Restaurant.find_by(id: params[:restaurant_id])
        @preference = Preference.where(email: params[:email]).find_by(user_id: current_user.id)
        if arttype == '2' #社外＋初回は料理に関する記事を表示
          @article = Article.where(arttype: arttype, restaurant_id: @restaurant.id).last
        else
          @article = Article.where(arttype: arttype, industry: current_user.industry).last
        end
        Visit.create(user_id: current_user.id, restaurant_id: @restaurant.id)
        Read.create(user_id: current_user.id, article_id: @article.id)
        #Google map API表示
        @latitude = @restaurant.latitude
        @longitude = @restaurant.longitude
        @address = @restaurant.address
      else #会食相手の好みが登録されていない場合/preference/newへ飛ばす
        redirect_to new_preference_path, notice: "Please ask #{params[:email]}'s food preferences!"
      end
    else
      @restaurant = Restaurant.find_by(id: params[:restaurant_id])
      render 'new'
    end
  end

  def new
    @restaurant = Restaurant.find_by(id: params[:restaurant_id])
  end

  private
  def check_login
    if not logged_in?
      redirect_to new_session_path  
    end
  end
end

