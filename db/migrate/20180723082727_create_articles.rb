class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.integer :industry
      t.integer :type
      t.string :title
      t.text :content
      t.timestamps
    end
  end
end
