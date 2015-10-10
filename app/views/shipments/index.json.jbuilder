json.array!(@shipments) do |shipment|
  json.extract! shipment, :id, :wieght, :pack_date, :pick_date, :deliver_date, :company_id, :discount, :notes, :user_id, :origin_id, :dest_id, :origin_agent, :dest_agent, :carrier, :reg_no, :atlas_no, :gbl_no, :move_type, :miles, :survey_date, :hauler, :surveyor, :booker, :apu
  json.url shipment_url(shipment, format: :json)
end
