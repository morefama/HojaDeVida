class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :lname
      t.string :race
      t.text :history

      t.timestamps
    end
  end
end
