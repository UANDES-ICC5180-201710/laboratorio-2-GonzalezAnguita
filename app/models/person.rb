class Person < ApplicationRecord
    has_many :courses
    def name_with_initial
        "#{first_name.first}. #{last_name}"
    end
end
