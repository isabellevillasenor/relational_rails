class TeahousesController < ApplicationController

  def index
    @teahouses = Teahouse.all
  end

  def show
    @teahouse = Teahouse.find(params[:id])
  end

end
