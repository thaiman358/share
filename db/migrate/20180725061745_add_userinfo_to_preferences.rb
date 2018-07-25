class AddUserinfoToPreferences < ActiveRecord::Migration[5.1]
  def change
    add_column :preferences, :user_name, :string
    add_column :preferences, :client_name, :string
  end
end
