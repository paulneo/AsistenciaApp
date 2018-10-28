class Period < ApplicationRecord
  validates_presence_of :name, :date_init, :date_finish
  has_many :student_enrollments
end
