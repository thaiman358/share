class AddDetailsToTitles < ActiveRecord::Migration[5.1]
  def change
    add_column :titles, :price, :integer
    add_column :titles, :author, :string
  end
end
