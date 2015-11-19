class Shipment < ActiveRecord::Base
  belongs_to :company
  SHIPMENT_TYPES = ["Local", "Interstate", "Intrastate"]

  private



end
