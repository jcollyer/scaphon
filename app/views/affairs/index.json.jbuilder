json.array!(@affairs) do |affair|
  json.extract! affair, :kind, :name, :date, :location, :cost, :paypal
  json.url affair_url(affair, format: :json)
end