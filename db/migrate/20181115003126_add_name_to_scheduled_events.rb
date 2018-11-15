class AddNameToScheduledEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :scheduled_events, :name, :string
  end
end
