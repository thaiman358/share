class VisitsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    @visits = Visit.where(user_id: current_user.id)
  end
end
