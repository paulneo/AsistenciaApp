class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :name
      t.string :lastName
      t.string :email
      t.string :dni
      t.string :cellphone

      t.timestamps
    end
  end
end
