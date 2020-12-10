class AddMicrobreweryToBeers < ActiveRecord::Migration[5.2]
  def change
    add_reference :beers, :microbrewery, foreign_key: true
  end
end
