class MicrobreweriesController < ApplicationController
  def index
    @microbreweries = Microbrewery.all
  end

end