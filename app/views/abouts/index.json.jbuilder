json.array!(@abouts) do |about|
  json.extract! about, :about, :scaphon, :aphon, :csp, :more
  json.url about_url(about, format: :json)
end