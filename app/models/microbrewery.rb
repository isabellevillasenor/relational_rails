class Microbrewery < ApplicationRecord
  has_many :beers, dependent: :destroy
end
