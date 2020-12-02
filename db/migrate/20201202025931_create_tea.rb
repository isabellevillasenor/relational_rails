class CreateTea < ActiveRecord::Migration[5.2]
  def change
    create_table :teas do |t|
      t.string :name
      t.string :category
      t.string :origin
      t.float :grams_needed
      t.integer :steep_time
      t.integer :brew_temp
      t.integer :number_of_infusions
      t.datetime :season_picked
      t.string :ideal_teapot
      t.boolean :caffeinated
    end
  end
end
