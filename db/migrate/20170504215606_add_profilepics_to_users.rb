class AddProfilepicsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :profilepics, :json
  end
end
