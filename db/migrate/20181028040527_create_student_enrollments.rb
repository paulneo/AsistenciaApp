class CreateStudentEnrollments < ActiveRecord::Migration[5.2]
  def change
    create_table :student_enrollments do |t|
      t.references :person, foreign_key: true
      t.references :period, foreign_key: true
      t.string :hours

      t.timestamps
    end
  end
end
