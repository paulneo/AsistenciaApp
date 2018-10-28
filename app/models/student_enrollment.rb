class StudentEnrollment < ApplicationRecord
  belongs_to :person
  belongs_to :period
end
