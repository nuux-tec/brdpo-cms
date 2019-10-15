if @course.image.attached?
  json.image rails_blob_url(@course.image)
end

json.name @course.name
json.price @course.price
json.about @course.about.body
json.duration @course.duration
json.date @course.when.strftime('%d/%m/%Y')
