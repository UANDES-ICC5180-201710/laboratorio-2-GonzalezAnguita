class StudentCourse < ApplicationRecord
  belongs_to :person
  belongs_to :course
end