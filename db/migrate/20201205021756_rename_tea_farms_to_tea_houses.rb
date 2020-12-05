class RenameTeaFarmsToTeaHouses < ActiveRecord::Migration[5.2]
  def change
    rename_table :tea_farms, :tea_houses
  end
end
