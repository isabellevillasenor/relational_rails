class Beer < ApplicationRecord
  belongs_to :microbrewery

  def self.new_beers
    order("brewed_on desc")
  end

  def self.happy_level(threshold)
    where("ABV >= #{threshold}")
  end

end
