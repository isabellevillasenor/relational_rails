class FixTeaHouseHoursOfOperation < ActiveRecord::Migration[5.2]
  def change
    rename_column :tea_houses, :hours_of_operation, :opening_date
  end
end
