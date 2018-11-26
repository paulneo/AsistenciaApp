class ScheduledEventSerializer < ActiveModel::Serializer

  attributes :id, :name,:date, :hour_init
  belongs_to :student_assistances
end
