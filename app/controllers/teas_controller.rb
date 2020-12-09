class TeasController < ApplicationController

  def index
    if params[:threshold] 
      @teas = Tea.grams_required(params[:threshold])
    else
      @teas = Tea.caffeinated
    end
  end

  def edit
    @tea = Tea.find(params[:id])
  end

  def show
    @tea = Tea.find(params[:id])
  end

  def update
    tea = Tea.find(params[:id])
    tea.update(tea_params)
    tea.save
    redirect_to "/teas"
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
