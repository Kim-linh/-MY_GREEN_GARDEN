class WatersController < ApplicationController
  skip_before_action :authenticate_user!

  def create
    @user_plant = UserPlant.find(params[:user_plant_id])
    @water = Water.create(user_plant: @user_plant)
    flash[:notice] = "#{@user_plant.name} est arrosé(e)"
    redirect_to @user_plant
  end
end
