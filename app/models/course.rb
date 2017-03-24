class Course < ApplicationRecord
    belongs_to :teacher, class_name: 'Person'
    
    def self.search(search)
      where('title LIKE ? or code LIKE ?', "%#{search}%", "%#{search}%")
    end
    
    def get_students
      StudentCourse.where(:course => self.id)
    end
end
