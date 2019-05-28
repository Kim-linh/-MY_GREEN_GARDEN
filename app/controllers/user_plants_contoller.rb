class UserPlantsController < ApplicationController

  def index
    @user_plants = UserPlant.all
  end

  def show
  end
end
