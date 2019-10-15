json.array! @news do |news|
  json.id news.id
  json.name news.title
  json.content news.content.body
end
