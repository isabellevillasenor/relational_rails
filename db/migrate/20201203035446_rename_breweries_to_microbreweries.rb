class RenameBreweriesToMicrobreweries < ActiveRecord::Migration[5.2]
  def change
    rename_table :breweries, :microbreweries
  end
end
