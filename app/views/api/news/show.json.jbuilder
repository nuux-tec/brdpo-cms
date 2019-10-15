if @news.image.attached?
  json.image rails_blob_url(@news.image)
end

json.name @news.title
json.content @news.content.body