class RemoveClientNameIdFromVisits < ActiveRecord::Migration[5.1]
  def change
    remove_reference :visits, :client_name, index: true
  end
end
