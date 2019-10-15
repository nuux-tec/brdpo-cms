json.array! @news do |news|
  json.id news.id

  if news.image.attached?
    json.image rails_blob_url(news.image)
  end

  json.name news.title
  json.content news.content.body
end
