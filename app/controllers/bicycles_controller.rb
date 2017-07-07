class BicyclesController < ApplicationController
  def index
    @bicycles = Bicycle.all
    respond_to do |format|
      format.html
      format.js
    end
  end

  def show
    @bicycle = Bicycle.find(params[:id])
    @suggestions = @bicycle.bicycle_suggestions
  end
end
