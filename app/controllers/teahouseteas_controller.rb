class TeahouseteasController < ApplicationController

  def index
    @teahouse_teas = Teahouse.find(params[:id]).teas
    @teahouse = Teahouse.find(params[:id])
  end

  def create
    @teahouse = Teahouse.find(params[:id])
    @teahouse.teas.create!(tea_params)
    redirect_to "/teahouses/#{params[:id]}/teas"
  end

  def new
    @teahouse = Teahouse.find(params[:id])
  end

  def show
    @teas = Tea.find(params[:id])
  end

  private
  def tea_params
    params.permit(:name, :category, :origin, :grams_needed, :steep_time, :brew_temp, :number_of_infusions, :season_picked, :ideal_teapot, :caffeinated)
  end
end
