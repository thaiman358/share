class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.integer :category
      t.text :overview
      t.time :hour
      t.string :tel
      t.string :price
      t.text :address
      t.string :image
      t.timestamps
    end
  end
end
