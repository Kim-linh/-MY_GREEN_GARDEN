class WatersController < ApplicationController
  skip_before_action :authenticate_user!

  def create
    @user_plant = UserPlant.find(params[:user_plant_id])
    @water = Water.create(user_plant: @user_plant)
    flash[:notice] = "j'ai arrosé ma plante"
    redirect_to @user_plant
  end

  def update
    #faire le calcul pour le nombre d'arrosage
  end

  def calculate_days
    # faire un if avec le arrosage.date et le plant.days
    # send message
  end
end
