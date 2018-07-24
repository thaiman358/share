class AddCulumsToUsersTitleindustry < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :industry, :int, default: false
    add_column :users, :title, :int, default: false
  end
end
