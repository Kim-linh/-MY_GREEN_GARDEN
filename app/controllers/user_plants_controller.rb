class UserPlantsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :find_user_plant, only: [:show, :edit, :update, :destroy]

  def index
    @user_plants = UserPlant.all
    @activity = Activity.new
  end

  def show
  end

  def new
    @user_plant = UserPlant.new
  end

  def create
    @user_plant = UserPlant.new(user_plant_params)
    if @user_plant.save!
      redirect_to user_plants_path
      #envoyer un message
    else
      render :new
    end
  end

  def destroy
    @user_plant.delete
    redirect_to user_plants_path
  end

  private

  def find_user_plant
    @user_plant = UserPlant.find(params[:id])
  end

  def user_plant_params
    params.require(:user_plant).permit(:name, :picture, :origin_health, :user_id, :plant_id)
  end
end
