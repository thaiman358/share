class AddRestaurantIdToArticles < ActiveRecord::Migration[5.1]
  def change
    add_reference :articles, :restaurant, foreign_key: true
  end
end
