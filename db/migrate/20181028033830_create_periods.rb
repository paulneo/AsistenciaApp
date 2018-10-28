class CreatePeriods < ActiveRecord::Migration[5.2]
  def change
    create_table :periods do |t|
      t.string :name
      t.datetime :date_init
      t.datetime :date_finish

      t.timestamps
    end
  end
end
