class AddTeahouseToTeas < ActiveRecord::Migration[5.2]
  def change
    add_reference :teas, :teahouse, foreign_key: true
  end
end
