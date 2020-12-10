class BeersController < ApplicationController

  def index
    if params[:threshold]
      require "pry"; binding.pry
      @beers = Beer.happy_level(params[:threshold])
    else
      @beers = Beer.order("brewed_on desc")
    end
  end

  def show
    @beer = Beer.find(params[:id])
  end

  def edit
    @beer = Beer.find(params[:id])
  end

  def update
    beer = Beer.find(params[:id])
    beer.update(beer_params)
    beer.save
    redirect_to "/beers/#{params[:id]}"
  end

  def destroy
    Beer.destroy(params[:id])
    redirect_to '/beers'
  end



  private
  def beer_params
    params.permit(:category, :name, :ABV, :ideal_vessel, :body, :aroma, :color, :brewed_on)
  end
end
