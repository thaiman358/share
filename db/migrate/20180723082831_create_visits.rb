class CreateVisits < ActiveRecord::Migration[5.1]
  def change
    create_table :visits do |t|
      t.references :user
      t.references :restaurant
      t.timestamps
    end
  end
end
