class TeasController < ApplicationController

  def index
    @teas = Tea.all
  end

  def show
    @teahouse_teas = Teahouse.find(params[:id]).teas
    @teahouse = Teahouse.find(params[:id])
  end

  private
  def tea_params
    params.permit(:name, :category, :origin, :grams_needed, :steep_time, :brew_temp, :number_of_infusions, :season_picked, :ideal_teapot, :caffeinated)
  end

end
