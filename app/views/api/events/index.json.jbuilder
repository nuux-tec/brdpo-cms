json.array! @events do |event|
  json.id event.id
  json.name event.name
  json.about event.about.body
  json.price event.price
  json.location event.location
  json.date event.when.strftime('%d/%m/%Y')
  json.hour event.when.strftime('%H:%M')
end
