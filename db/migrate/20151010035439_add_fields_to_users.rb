class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :driver, :boolean
    add_column :users, :sales, :boolean
  end
end
