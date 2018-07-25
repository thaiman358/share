class TopsController < ApplicationController
  def index
    @restaurants=Restaurant.all
    @japanese=Restaurant.where(category:1)
    @western=Restaurant.where(category:2)
    @italian=Restaurant.where(category:3)
    @french=Restaurant.where(category:4)
    @chinese=Restaurant.where(category:5)
    @others=Restaurant.where(category:6)
  end
end
