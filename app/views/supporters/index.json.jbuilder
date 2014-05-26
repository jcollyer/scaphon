json.array!(@supporters) do |supporter|
  json.extract! supporter, :name, :status, :active
  json.url supporter_url(supporter, format: :json)
end