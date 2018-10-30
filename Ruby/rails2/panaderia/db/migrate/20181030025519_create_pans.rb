class CreatePans < ActiveRecord::Migration[5.2]
  def change
    create_table :pans do |t|
      t.string :name
      t.text :descption
      t.numeric :price

      t.timestamps
    end
  end
end
