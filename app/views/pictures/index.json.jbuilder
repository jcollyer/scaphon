json.array!(@pictures) do |picture|
  json.extract! picture, :name
  json.url picture_url(picture, format: :json)
end