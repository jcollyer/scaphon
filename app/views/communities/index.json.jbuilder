json.array!(@communities) do |community|
  json.extract! community, :name, :description
  json.url community_url(community, format: :json)
end