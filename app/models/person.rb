class Person < ApplicationRecord
    has_many :courses
    def name_with_initial
        "#{first_name.first}. #{last_name}"
    end

    def self.search(search)
        where('first_name LIKE ? or last_name LIKE ? or email LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%")
    end
end
