json.extract! course, :id, :name, :duration, :when, :price, :about, :created_at, :updated_at
json.url course_url(course, format: :json)
