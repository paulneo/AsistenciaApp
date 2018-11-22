class StudentEnrollmentSerializer < ActiveModel::Serializer

  attributes :id

  has_many :person
  has_many :period
  belongs_to :student_assistances

end
