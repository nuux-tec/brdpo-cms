json.array! @news do |news|
  json.name news.title
  json.content news.content.body
end
