json.array!(@meals) do |meal|
  json.extract! meal, :id, :order_id, :name
  json.url meal_url(meal, format: :json)
end
