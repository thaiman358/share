class CreateReads < ActiveRecord::Migration[5.1]
  def change
    create_table :reads do |t|
      t.references :user
      t.references :article
      t.timestamps
    end
  end
end
