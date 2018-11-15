class Event < ApplicationRecord
  belongs_to :period
  has_many :scheduled_event
end
