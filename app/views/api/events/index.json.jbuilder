json.array! @events do |event|
  json.id event.id

  if event.image.attached?
    json.image rails_blob_url(event.image)
  end

  json.day event.created_at.day
  json.month event.created_at.month
  json.year event.created_at.year

  json.name event.name
  json.about event.about.body
  json.price event.price
  json.location event.location
  json.date event.when.strftime('%d/%m/%Y')
  json.hour event.when.strftime('%H:%M')
end
