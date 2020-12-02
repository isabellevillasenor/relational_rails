class CreateTeaHouse < ActiveRecord::Migration[5.2]
  def change
    create_table :tea_houses do |t|
      t.string :name
      t.string :location
      t.datetime :restocked_on
      t.datetime :hours_of_operation
      t.boolean :allows_dogs
    end
  end
end
