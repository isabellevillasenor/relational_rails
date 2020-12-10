class MicrobrewerybeersController < ApplicationController
  def index
    @microbrewery_beers = Beer.all
    @microbrewery = Microbrewery.find(params[:id])
  end
end
