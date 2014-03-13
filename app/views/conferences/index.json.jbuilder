json.array!(@conferences) do |conference|
  json.extract! conference, :name, :date, :location, :cost, :paypal
  json.url conference_url(conference, format: :json)
end