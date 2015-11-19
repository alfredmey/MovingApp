class AddFieldsToShipments < ActiveRecord::Migration
  def change
    add_column :shipments, :o_name, :string
    add_column :shipments, :o_phone, :string
    add_column :shipments, :o_cell, :string
    add_column :shipments, :o_notes, :string
    add_column :shipments, :o_address, :string
    add_column :shipments, :o_city, :string
    add_column :shipments, :o_state, :string
    add_column :shipments, :o_zip, :integer
    add_column :shipments, :d_name, :string
    add_column :shipments, :d_phone, :string
    add_column :shipments, :d_cell, :string
    add_column :shipments, :d_notes, :string
    add_column :shipments, :d_address, :string
    add_column :shipments, :d_city, :string
    add_column :shipments, :d_state, :string
    add_column :shipments, :d_zip, :integer
  end
end
