class Teahouse < ApplicationRecord
  has_many :teas, dependent: :destroy

  def self.order_by_opening_date
    order("opening_date desc")
  end

  def self.order_by_count
    select("teahouses.*, count(teas) as tea_count")
      .joins(:teas)
      .group(:id)
      .order("tea_count desc")
  end

end
