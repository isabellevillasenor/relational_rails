class Tea < ApplicationRecord
  belongs_to :teahouse

  def self.count_teas
    count
  end

  def self.caffeinated
    order("caffeinated desc")
  end
  
end
