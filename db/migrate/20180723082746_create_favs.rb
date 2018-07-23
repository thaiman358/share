class CreateFavs < ActiveRecord::Migration[5.1]
  def change
    create_table :favs do |t|
      t.references :user
      t.references :restaurant
      t.timestamps
    end
  end
end
