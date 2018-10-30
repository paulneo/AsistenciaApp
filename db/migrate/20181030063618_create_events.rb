class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.references :period, foreign_key: true
      t.string :name
      t.string :place
      t.integer :time_tolerance
      t.boolean :state
      t.string :longitude
      t.string :latitude

      t.timestamps
    end
  end
end
