json.extract! student_course, :id, :person_id, :course_id, :created_at, :updated_at
json.url student_course_url(student_course, format: :json)
