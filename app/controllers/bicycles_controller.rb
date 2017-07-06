class BicyclesController < ApplicationController
  def index
    @bicycles = Bicycle.all
    respond_to do |format|
      format.html
      format.js
    end
  end

  def show
  end
end
