class FixTeaFarmId < ActiveRecord::Migration[5.2]
  def change
    rename_column :teas, :tea_farm_id, :tea_house_id 
  end
end
