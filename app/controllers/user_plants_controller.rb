class UserPlantsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :find_user_plant, only: [:show, :edit, :update, :delete]

  def index
    @user_plants = UserPlant.all
  end

  def show
  end

  private

def find_user_plant
  @user_plant = UserPlant.find(params[:id])
end

end
