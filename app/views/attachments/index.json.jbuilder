json.array!(@attachments) do |attachment|
  json.extract! attachment, :name
  json.url attachment_url(attachment, format: :json)
end