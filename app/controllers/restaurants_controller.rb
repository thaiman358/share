class RestaurantsController < ApplicationController
    def index
      @restaurants=Restaurant.all
    end
    def japanese
      @restaurants=Restaurant.all
    end
    def western
      @restaurants=Restaurant.all
    end
    def italian
      @restaurants=Restaurant.all
    end
    def french
      @restaurants=Restaurant.all
    end
    def chinese
      @restaurants=Restaurant.all
    end
    def others
      @restaurants=Restaurant.all
    end
end
