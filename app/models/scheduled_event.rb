class ScheduledEvent < ApplicationRecord
  belongs_to :event
  has_many :student_assistances
end
