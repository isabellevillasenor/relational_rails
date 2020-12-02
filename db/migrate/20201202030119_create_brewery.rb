class CreateBrewery < ActiveRecord::Migration[5.2]
  def change
    create_table :breweries do |t|
      t.string :name
      t.string :location
      t.string :category
      t.datetime :hours_of_operation
      t.date :license_renewal
      t.boolean :outdoor_seating
      t.boolean :social_distancing
    end
  end
end
