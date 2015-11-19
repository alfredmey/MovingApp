class AddScanDateToShipment < ActiveRecord::Migration
  def change
    add_column :shipments, :scan_date, :datetime
  end
end
