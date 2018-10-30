class CreateScheduledEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :scheduled_events do |t|
      t.references :event, foreign_key: true
      t.datetime :date
      t.datetime :hour_init
      t.datetime :hour_finish

      t.timestamps
    end
  end
end
