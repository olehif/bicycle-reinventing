class BicycleSuggestionsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_bicycle_suggestion, only: [:destroy, :merge]

  def new
    @bicycle = Bicycle.find(params[:id])
    @bicycle_suggestion = BicycleSuggestion.new(@bicycle.attributes.except('user_id'))
  end

  def create
    @bicycle_suggestion = BicycleSuggestion.new(bicycle_suggestion_params)
    if @bicycle_suggestion.save
      redirect_to bicycle_path(id: @bicycle_suggestion.bicycle.id)
    else
      render 'new'
    end
  end

  def destroy
    @bicycle_suggestion.destroy if @bicycle_suggestion.bicycle.user == current_user
    redirect_to :back
  end

  def merge
    @bicycle = @bicycle_suggestion.bicycle
    if @bicycle.user == current_user
      @bicycle_suggestion.bicycle.update(@bicycle_suggestion.attributes.except('bicycle_id', 'id'))
      @bicycle.bicycle_photo = @bicycle_suggestion.bicycle_photo
      @bicycle.save
      @bicycle_suggestion.destroy
      redirect_to :back
    end
  end

  private

  def bicycle_suggestion_params
    params.require(:bicycle_suggestion).permit(:name,
                                               :description,
                                               :bicycle_category_id,
                                               :bicycle_photo,
                                               :bicycle_id)
  end

  def find_bicycle_suggestion
    @bicycle_suggestion = BicycleSuggestion.find(params[:bicycle_suggestion_id])
  end
end
