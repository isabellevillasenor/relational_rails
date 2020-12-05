class TeaHousesController < ApplicationController
  def index
    @tea_houses = TeaHouse.all
  end

end