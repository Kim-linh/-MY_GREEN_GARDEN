class UserPlantsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :find_user_plant, only: [:show, :edit, :update, :destroy]

  def index
    @user_plants = UserPlant.where(user: current_user)
    @activity = Activity.new
  end

  def show
    @last_water = @user_plant.waters.last
     # @last_water.update(created_at: DateTime.now - 6.days)
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
  end

  def update
    if @user_plant.update(user_plant_params)
      redirect_to user_plant_path(@user_plant)
    else
      render :edit
    end
  end

  def destroy
    @user_plant.destroy
    redirect_to user_plants_path
  end

  private

  # def user_plant_age(user_plant)
  #   @age = (DateTime.now.to_i - user_plant.created_at.to_i) / (60 * 60 * 24)
  # end

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
