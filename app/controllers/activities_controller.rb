class ActivitiesController < ApplicationController
  skip_before_action :authenticate_user!
  def create
    @user_plant = UserPlant.find(params[:user_plant_id])

    if @user_plant.activities == []
      @health = @user_plant.origin_health
      # si il n'y aucune activite alors je recupere la sante origine
    else
      @health = @user_plant.activities.last.health
      # sinon je recupere la derniere activite dans mon tableau
    end

    @activity = Activity.new(user_plant: @user_plant)
    if activity_params[:health] == nil
      @activity.health = @health
      # si mon user ne coche aucune activite alors je renvoie la dernier health recupere
    else
      @activity.health = activity_params[:health]
      # sinon je renvoi le dernier parametre enregistre (parametre = case cochee)
    end

    if @activity.save!
      redirect_to user_plants_path
    else
      flash[:notice] = @activity.errors.messages
      @user_plants = UserPlant.all
      render "user_plants/index"
    end
  end

  private

  def activity_params
    params.require(:activity).permit(:health)
  end
end
