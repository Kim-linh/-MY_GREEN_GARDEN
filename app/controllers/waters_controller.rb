class WatersController < ApplicationController
  skip_before_action :authenticate_user!

  def create
    @user_plant = UserPlant.find(params[:user_plant_id])
    @water = Water.create(user_plant: @user_plant)
    puts "j'ai arrosé ma plante"
  end
end
