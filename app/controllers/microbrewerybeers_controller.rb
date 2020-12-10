class MicrobrewerybeersController < ApplicationController
  def index
    @microbrewery_beers = Beer.all
    @microbrewery = Microbrewery.find(params[:id])
  end

  def new
    @microbrewery = Microbrewery.find(params[:id])
  end

  def create
    @microbrewery = Microbrewery.find(params[:id])
    @microbrewery.beers.create!(beer_params)
    redirect_to "/microbreweries/#{params[:id]}/beers"
  end

  private
  def beer_params
    params.permit(:category, :name, :ABV, :ideal_vessel, :body, :aroma, :color, :brewed_on)
  end
end
