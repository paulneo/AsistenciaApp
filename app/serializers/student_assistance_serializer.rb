class StudentAssistanceSerializer < ActiveModel::Serializer

  attributes :id ,:registered_time, :scheduled_event_id, :student_enrollment_id

  has_many :student_enrollment
end
