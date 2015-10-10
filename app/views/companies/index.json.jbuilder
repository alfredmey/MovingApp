json.array!(@companies) do |company|
  json.extract! company, :id, :name, :address, :city, :state, :zip, :agent_code, :phone, :fax, :email
  json.url company_url(company, format: :json)
end
