class RemoveTeaHouseIdFromTeas < ActiveRecord::Migration[5.2]
  def change
    remove_column :teas, :tea_house_id, :integer
  end
end
