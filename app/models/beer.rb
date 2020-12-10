class Beer < ApplicationRecord
  belongs_to :microbrewery

  def self.new_beers
    order("brewed_on desc")
  end



end
