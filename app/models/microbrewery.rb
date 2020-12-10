class Microbrewery < ApplicationRecord
  has_many :beers, dependent: :destroy

  def newest_brewery
    order("")
  end

end
