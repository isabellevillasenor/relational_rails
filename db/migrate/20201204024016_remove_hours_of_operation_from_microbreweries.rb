class RemoveHoursOfOperationFromMicrobreweries < ActiveRecord::Migration[5.2]
  def change
    remove_column :microbreweries, :hours_of_operation, :datetime
  end
end
