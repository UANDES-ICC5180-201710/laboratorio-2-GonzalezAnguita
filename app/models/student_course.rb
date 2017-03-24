class StudentCourse < ApplicationRecord
    belongs_to :person
    belongs_to :course
  
    def self.search(search)
      where('course LIKE ?', "%#{search}%")
    end
end
