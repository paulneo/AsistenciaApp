class CreateStudentAssistances < ActiveRecord::Migration[5.2]
  def change
    create_table :student_assistances do |t|
      t.references :scheduled_event, foreign_key: true
      t.references :student_enrollment, foreign_key: true
      t.datetime :registered_time
      t.string :assistance

      t.timestamps
    end
  end
end
