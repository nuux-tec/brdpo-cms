if @news.image.attached?
  json.image rails_blob_url(@news.image)
end

json.day @news.created_at.day
json.month @news.created_at.month
json.year @news.created_at.year

json.name @news.title
json.content @news.content.body