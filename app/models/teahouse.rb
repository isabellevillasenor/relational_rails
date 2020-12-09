class Teahouse < ApplicationRecord
  has_many :teas

  def self.order_by_opening_date
    order("opening_date desc")
  end
  
end
