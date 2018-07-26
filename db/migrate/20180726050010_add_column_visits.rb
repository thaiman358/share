class AddColumnVisits < ActiveRecord::Migration[5.1]
  def change
    add_reference :visits, :client_name, index: true
  end
end
