class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.integer :agent_code
      t.string :phone
      t.string :fax
      t.string :email

      t.timestamps null: false
    end
  end
end
