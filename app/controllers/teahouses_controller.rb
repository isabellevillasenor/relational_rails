class TeahousesController < ApplicationController

  def index
    if params[:sort]
      @teahouse = Teahouse.order_by_count
    else
      @teahouse = Teahouse.order_by_opening_date
    end
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

  def destroy
    Teahouse.destroy(params[:id])
    redirect_to '/teahouses'
  end

  private
  def house_params
    params.permit(:name, :location, :restocked_on, :opening_date, :allows_dogs)
  end
end
