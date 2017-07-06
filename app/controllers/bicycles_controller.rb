class BicyclesController < ApplicationController
  def index
    @bicycles = Bicycle.all
  end

  def show
  end
end
