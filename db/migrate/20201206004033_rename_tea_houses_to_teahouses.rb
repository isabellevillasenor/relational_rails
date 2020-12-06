class RenameTeaHousesToTeahouses < ActiveRecord::Migration[5.2]
  def change
    rename_table :tea_houses, :teahouses
  end
end
