class Person < ApplicationRecord
  validates_presence_of :name, :lastName, :email, :dni, :cellphone
  validates :dni,  uniqueness: true
  has_many :student_enrollments,  dependent: :delete_all

end
