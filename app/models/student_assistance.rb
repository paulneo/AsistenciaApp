class StudentAssistance < ApplicationRecord
  belongs_to :scheduled_event
  belongs_to :student_enrollment

  validates_uniqueness_of :student_enrollment, :scope => :scheduled_event
end
