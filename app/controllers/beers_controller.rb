class BeersController < ApplicationController
  def index
    # require "pry"; binding.pry
    @beers = Beer.all
  end
end
