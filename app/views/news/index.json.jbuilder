json.array!(@news) do |news|
  json.extract! news, :id, :heading, :news, :approve
  json.url news_url(news, format: :json)
end
