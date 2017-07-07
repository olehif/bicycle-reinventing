class BicyclesController < ApplicationController
  def index
    @bicycles = Bicycle.search(params[:search]).page(params[:page]).per(10)
    if params[:bicycle_category_id].present?
      @bicycles = @bicycles.where(bicycle_category_id: params[:bicycle_category_id])
    end
    respond_to do |format|
      format.html
      format.js
    end
  end

  def show
    @bicycle = Bicycle.includes(:bicycle_usages, :bicycle_suggestions)
                      .find(params[:id])
    @suggestions = @bicycle.bicycle_suggestions
    @usages_count = @bicycle.bicycle_usages.count
    @usage = BicycleUsage.new
  end
end
