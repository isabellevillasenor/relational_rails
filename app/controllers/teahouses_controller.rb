class TeahousesController < ApplicationController

  def index
    @teahouses = Teahouse.all
  end

  def show
    @teahouse = Teahouse.find(params[:id])
  end

  def new

  end

  def create
    @teahouse = Teahouse.new(house_params)
    @teahouse.save
    redirect_to '/teahouses'
  end

  private
  def house_params
    params.permit(:name, :location, :restocked_on, :opening_date, :allows_dogs)
  end
end
