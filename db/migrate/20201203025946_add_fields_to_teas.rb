class AddFieldsToTeas < ActiveRecord::Migration[5.2]
  def change
    add_column :teas, :tea_house_id, :integer
  end
end
