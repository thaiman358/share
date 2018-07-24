class ChangeDatatypeHourOfRestaurant < ActiveRecord::Migration[5.1]
  def change
    change_column :restaurants, :hour, :string    
  end
end
