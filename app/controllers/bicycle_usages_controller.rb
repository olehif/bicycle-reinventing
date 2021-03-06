class BicycleUsagesController < ApplicationController
  before_action :authenticate_user!
  def create
    @bicycle_usage = BicycleUsage.new({
      user_id: current_user.id,
      bicycle_id: params[:bicycle_id]
    }).save
    redirect_to :back
  end
end
