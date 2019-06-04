class UserPlantsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :find_user_plant, only: [:show, :edit, :update, :destroy]

  def index
    @user_plants = UserPlant.all
    @activity = Activity.new
  end

  def show
    @last_water = @user_plant.waters.last
    # @last_water.update(created_at: DateTime.now - 15.days)
    @level = ((1 - (@last_water.countdown.to_f / @user_plant.plant.days)) * 140).to_i
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

  def edit
    @user_plant = UserPlant.find(params[:id])
  end

  def update
    @user_plant = UserPlant.find(params[:id])
    @user_plant.update(user_params)
  end

  def destroy
    @user_plant.delete
    redirect_to user_plants_path
  end

  private

  def user_params
    params.require(:user_plant).permit(:email)
  end

  def find_user_plant
    @user_plant = UserPlant.find(params[:id])
  end

  def user_plant_params
    params.require(:user_plant).permit(:name, :picture, :origin_health, :user_id, :plant_id)
  end
end
