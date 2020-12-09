class TeasController < ApplicationController

  def index
    @teas = Tea.order_by_season
  end

  def edit
    @tea = Tea.find(params[:id])
  end

  def show # child
    @tea = Tea.find(params[:id])
  end

  def update
    tea = Tea.find(params[:id])
    tea.update(tea_params)
    tea.save
    redirect_to "/teas/#{tea.id}"
  end

  def destroy
    tea = Tea.destroy(params[:id])
    redirect_to "/teas"
  end

  private
  def tea_params
    params.permit(:name, :category, :origin, :grams_needed, :steep_time, :brew_temp, :number_of_infusions, :season_picked, :ideal_teapot, :caffeinated)
  end

end
