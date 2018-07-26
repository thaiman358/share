class AddClientNameToVisits < ActiveRecord::Migration[5.1]
  def change
    add_column :visits, :client_name, :string
  end
end
