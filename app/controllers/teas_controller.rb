class TeasController < ApplicationController

  def index
    @teas = Tea.all
  end

  def show
    @teahouse_teas = Teahouse.find(params[:id]).teas
    @teahouse = Teahouse.find(params[:id])
  end

end
