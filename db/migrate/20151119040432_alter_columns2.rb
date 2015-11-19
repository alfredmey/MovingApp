class AlterColumns2 < ActiveRecord::Migration
  def change
    remove_column :shipments, :scan_date
    add_column :shipments, :scan_date, :date
  end
end
