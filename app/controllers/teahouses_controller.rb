class TeahousesController < ApplicationController

  def index
    @tea_houses = Teahouse.all
  end

end
