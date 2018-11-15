class ScheduledEvent < ApplicationRecord
  belongs_to :event
  has_many :student_assistances,  dependent: :delete_all
end
