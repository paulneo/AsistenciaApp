class Period < ApplicationRecord
  validates_presence_of :name, :date_init, :date_finish
  has_many :student_enrollments,  dependent: :delete_all
  has_many :events,  dependent: :delete_all

end
