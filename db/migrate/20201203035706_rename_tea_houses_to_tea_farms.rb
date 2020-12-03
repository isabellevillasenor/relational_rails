class RenameTeaHousesToTeaFarms < ActiveRecord::Migration[5.2]
  def change
    rename_table :tea_houses, :tea_farms
  end
end
