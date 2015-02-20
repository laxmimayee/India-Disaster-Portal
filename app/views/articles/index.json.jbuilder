json.array!(@articles) do |article|
  json.extract! article, :id, :heading, :article, :approve
  json.url article_url(article, format: :json)
end
