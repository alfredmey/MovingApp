json.array!(@locations) do |location|
  json.extract! location, :id, :name, :address, :city, :state, :zip, :phone, :cell, :notes
  json.url location_url(location, format: :json)
end
