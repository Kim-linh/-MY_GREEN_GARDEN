class WatersController < ApplicationController
  skip_before_action :authenticate_user!

  def create
    @user_plant = UserPlant.find(params[:user_plant_id])
    @water = Water.create(user_plant: @user_plant)
raise
    # @countdown = userplant.start_countdown
    # date1 = Time.now
    # puts date1
    # while Time.now < date1
    #   t = Time.at(date1.to_i - Time.now.to_i)
    #   puts t.strftime('%M:%S')
    #   sleep 1
    end
  end

    private

  def activity_params
    params.require(:waters).permit(:user_plant_id)
  end
