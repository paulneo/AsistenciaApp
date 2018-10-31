class StudentAssistance < ApplicationRecord
  belongs_to :scheduled_event
  belongs_to :student_enrollment
end
