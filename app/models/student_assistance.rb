class StudentAssistance < ApplicationRecord
  belongs_to :scheduled_event
  belongs_to :student_enrollment
  validates :student_enrollment,  uniqueness: true
end
