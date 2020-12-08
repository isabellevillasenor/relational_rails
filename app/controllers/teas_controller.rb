class TeasController < ApplicationController

  def index
    @teas = Tea.all
  end

  def edit
    @tea_show = Tea.find(params[:id])
  end

  def show # child
    @tea_show = Tea.find(params[:id])
  end

  def update
    teas = Tea.find(params[:id])
    teas.update(tea_params)
    teas.save
    redirect_to "/teas/#{teas.id}"
  end

  private
  def tea_params
    params.permit(:name, :category, :origin, :grams_needed, :steep_time, :brew_temp, :number_of_infusions, :season_picked, :ideal_teapot, :caffeinated)
  end

end
