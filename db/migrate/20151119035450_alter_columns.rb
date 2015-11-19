class AlterColumns < ActiveRecord::Migration
  def change
    remove_column :shipments, :pack_date
    remove_column :shipments, :pick_date
    remove_column :shipments, :deliver_date
    remove_column :shipments, :survey_date
    add_column :shipments, :pack_date, :date
    add_column :shipments, :pick_date, :date
    add_column :shipments, :deliver_date, :date
    add_column :shipments, :survey_date, :date
  end
end
