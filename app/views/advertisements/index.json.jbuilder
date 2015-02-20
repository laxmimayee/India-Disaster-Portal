json.array!(@advertisements) do |advertisement|
  json.extract! advertisement, :id, :add_heading, :add_description, :display_at, :approve
  json.url advertisement_url(advertisement, format: :json)
end
