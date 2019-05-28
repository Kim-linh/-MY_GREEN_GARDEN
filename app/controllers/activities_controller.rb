class ActivitiesController < ApplicationController
  # skip_before_action :authenticate_user!
  def create
    @user_plant = UserPlant.find(params[:user_plant_id])
    @activity = Activity.new(user_plant: @user_plant, date: DateTime.now)

    if @activity.save
      redirect_to user_plants_path(current_user)
    else
      render "user_plants/index"
    end
  end
end
