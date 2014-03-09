json.array!(@newsletters) do |newsletter|
  json.extract! newsletter, :name, :date
  json.url newsletter_url(newsletter, format: :json)
end