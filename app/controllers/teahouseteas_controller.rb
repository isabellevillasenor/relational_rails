class TeahouseteasController < ApplicationController

  def create
    @teahouse = Teahouse.find(params[:id])
    # binding.pry
    @teahouse.teas.create!(tea_params)
    redirect_to "/teahouses/#{params[:id]}/teas"
  end

  def new
    @teahouse = Teahouse.find(params[:id])
  end

  private
  def tea_params
    params.permit(:name, :category, :origin, :grams_needed, :steep_time, :brew_temp, :number_of_infusions, :season_picked, :ideal_teapot, :caffeinated)
  end
end