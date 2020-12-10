class BeersController < ApplicationController

  def index
    @beers = Beer.all
  end

  def show
    # require "pry"; binding.pry
    @beer = Beer.find(params[:id])
  end

end
