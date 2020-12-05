class MicrobreweriesController < ApplicationController
  def index
    @microbreweries = Microbrewery.all
  end

  def show
    @microbrewery = Microbrewery.find(params[:id])
  end

  def new
  end

  def create
    microbrewery = Microbrewery.new(brewery_params)
    microbrewery.save
    redirect_to '/microbreweries'
  end 
  
  private
  def brewery_params
    params.permit(:name, :location, :license_renewal, :outdoor_seating, :social_distancing)
  end
end