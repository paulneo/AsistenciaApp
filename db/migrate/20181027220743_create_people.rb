class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :name
      t.string :last_name
      t.string :dni
      t.string :email
      t.string :cellphone

      t.timestamps
    end
  end
end
