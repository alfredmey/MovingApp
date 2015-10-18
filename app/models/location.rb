class Location < ActiveRecord::Base

  #geocoded_by :cs
  #after_validation :geocode, :if => :cs_changed?
  has_many :shipments, :foreign_key => :origin_id
  has_many :shipments, :foreign_key => :dest_id


  geocoded_by :full_address
  after_validation :set_address, :geocode

  def set_address
    full_address = "#{address}, #{city}, #{state} #{zip}"
  end
end
