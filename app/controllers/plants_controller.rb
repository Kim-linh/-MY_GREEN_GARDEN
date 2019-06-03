class PlantsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    if params[:query].present?
      @plants = Plant.where("variety ILIKE ?", "%#{params[:query]}%")
    else
      @plants = Plant.all
    end
  end

  def show
    @plant = Plant.find(params[:id])
  end
end
