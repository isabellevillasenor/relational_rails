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

  def edit
    @teahouse = Teahouse.find(params[:id])
  end

  def update
    teahouse = Teahouse.find(params[:id])
    teahouse.update(house_params)
    teahouse.save
    redirect_to "/teahouses/#{teahouse.id}"
  end

  private
  def house_params
    params.permit(:name, :location, :restocked_on, :opening_date, :allows_dogs)
  end
end
