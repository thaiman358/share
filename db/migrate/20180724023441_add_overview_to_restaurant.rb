class AddOverviewToRestaurant < ActiveRecord::Migration[5.1]
  def change
    add_column :restaurants, :overview, :text
  end
end
