json.array!(@menus) do |menu|
  json.extract! menu, :id, :from_date, :to_date
  json.url menu_url(menu, format: :json)
end
