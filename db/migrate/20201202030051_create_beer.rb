class CreateBeer < ActiveRecord::Migration[5.2]
  def change
    create_table :beers do |t|
      t.string :category
      t.string :name
      t.float :ABV
      t.string :ideal_vessel
      t.string :body
      t.string :aroma
      t.string :color
      t.datetime :brewed_on
      t.integer :brewery_id
    end
  end
end
