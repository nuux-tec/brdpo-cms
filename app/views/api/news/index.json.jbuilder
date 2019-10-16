json.array! @news do |news|
  json.id news.id

  json.day news.created_at.day
  json.month news.created_at.month
  json.year news.created_at.year

  if news.image.attached?
    json.image rails_blob_url(news.image)
  end

  json.name news.title
  json.content news.content.body
  json.resume news.content.body.to_plain_text
end
