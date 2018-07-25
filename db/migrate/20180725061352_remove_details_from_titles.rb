class RemoveDetailsFromTitles < ActiveRecord::Migration[5.1]
  def change
    remove_column :titles, :price, :integer
    remove_column :titles, :author, :string
  end
end
