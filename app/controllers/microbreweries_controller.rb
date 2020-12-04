class Microbreweries < ApplicationController
  def index
    @microbreweries = Microbreweries.all
  end

end