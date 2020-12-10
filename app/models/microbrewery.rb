class Microbrewery < ApplicationRecord
  has_many :beers, dependent: :destroy

  def self.outdoor_seating
    order("outdoor_seating desc")
  end

end
