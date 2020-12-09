class Tea < ApplicationRecord
  belongs_to :teahouse

  def self.order_by_season
    order("season_picked desc")
  end

  def self.count_teas
    count
  end
  
end
