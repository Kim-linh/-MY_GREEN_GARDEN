class ActivitiesController < ApplicationController
  skip_before_action :authenticate_user!
  def create

    @user_plant = UserPlant.find(params[:user_plant_id])
    @activity = Activity.new(user_plant: @user_plant, date: DateTime.now)
    # je dois implémenter une méthode pour remplir health d'une donné
    # soit en recuperant les donéées de la derniere action
    # soit en créant une nouvelle
    @health =







    if @activity.save
      redirect_to user_plants_path
    else
      flash[:notice] = @activity.errors.messages
      @user_plants = UserPlant.all
      render "user_plants/index"
    end
  end
end
