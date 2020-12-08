class TeasController < ApplicationController

  def index
    @teas = Tea.all
  end

  def show
    @teahouse_teas = Teahouse.find(params[:id]).teas
    @teahouse = Teahouse.find(params[:id])
  end

  def tea_show
    @tea_show = Tea.find(params[:id])
  end

  def edit

  end

  def update

  end

  private
  def tea_params
    params.permit(:name, :category, :origin, :grams_needed, :steep_time, :brew_temp, :number_of_infusions, :season_picked, :ideal_teapot, :caffeinated)
  end

end
