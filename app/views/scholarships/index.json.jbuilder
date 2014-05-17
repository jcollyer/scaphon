json.array!(@scholarships) do |scholarship|
  json.extract! scholarship, :name, :author, :info
  json.url scholarship_url(scholarship, format: :json)
end