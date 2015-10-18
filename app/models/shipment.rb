class Shipment < ActiveRecord::Base
  has_many :locations
  accepts_nested_attributes_for :locations
  has_one :company
  # belongs_to :origin, :class => 'Location', :foreign_key => 'origin_id'
  # belongs_to :dest, :class => 'Location', :foreign_key => 'dest_id'
end
