class CreatePreferences < ActiveRecord::Migration[5.1]
  def change
    create_table :preferences do |t|
      t.string :email
      t.string :preference
      t.string :unpreference
      t.references :user
      t.timestamps
    end
  end
end
