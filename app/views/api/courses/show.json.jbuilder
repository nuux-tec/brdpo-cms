json.name @course.name
json.price @course.price
json.about @course.about.body
json.duration @course.duration
json.date @course.when.strftime('%d/%m/%Y')