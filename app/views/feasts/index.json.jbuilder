json.array!(@feasts) do |feast|
  json.extract! feast, :id, :name, :description, :restaurant_id
  json.url feast_url(feast, format: :json)
end
