class StudentEnrollment < ApplicationRecord
  belongs_to :person
  belongs_to :period
  has_many :student_assistances,  dependent: :delete_all

    
end
