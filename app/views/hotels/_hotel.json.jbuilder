json.extract! hotel, :id, :name, :street, :suburb, :state, :postcode, :country, :created_at, :updated_at
json.url hotel_url(hotel, format: :json)