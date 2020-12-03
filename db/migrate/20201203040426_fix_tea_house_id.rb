class FixTeaHouseId < ActiveRecord::Migration[5.2]
  def change
    rename_column :teas, :tea_house_id, :tea_farm_id
  end
end
