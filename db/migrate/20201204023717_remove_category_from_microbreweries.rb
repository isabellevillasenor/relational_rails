class RemoveCategoryFromMicrobreweries < ActiveRecord::Migration[5.2]
  def change
    remove_column :microbreweries, :category, :string
  end
end
