class RemoveBreweryIdFromBeers < ActiveRecord::Migration[5.2]
  def change
    remove_column :beers, :brewery_id, :integer
  end
end
