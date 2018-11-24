class StudentAssistanceSerializer < ActiveModel::Serializer

  attributes :id ,:registered_time

  has_many :student_enrollment
  has_many :scheduled_event
end
