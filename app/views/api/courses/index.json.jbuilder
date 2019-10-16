json.array! @courses do |course|
  json.id course.id

  if course.image.attached?
    json.image rails_blob_url(course.image)
  end
  
  json.name course.name
  json.category course.category
  json.price course.price
  json.about course.about.body
  json.duration course.duration
  json.date course.when.strftime('%d/%m/%Y')
  json.resume course.about.body.to_plain_text
end
