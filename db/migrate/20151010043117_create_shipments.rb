class CreateShipments < ActiveRecord::Migration
  def change
    create_table :shipments do |t|
      t.integer :weight
      t.datetime :pack_date
      t.datetime :pick_date
      t.datetime :deliver_date
      t.integer :company_id
      t.string :discount
      t.text :notes
      t.integer :user_id
      t.integer :origin_id
      t.integer :dest_id
      t.string :origin_agent
      t.string :dest_agent
      t.string :carrier
      t.string :reg_no
      t.string :atlas_no
      t.string :gbl_no
      t.string :move_type
      t.integer :miles
      t.datetime :survey_date
      t.string :hauler
      t.string :surveyor
      t.string :booker
      t.boolean :apu

      t.timestamps null: false
    end
  end
end
