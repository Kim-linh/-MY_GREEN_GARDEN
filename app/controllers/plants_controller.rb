class PlantsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    if params[:query].present?
      sql_query = "variety ILIKE :query OR origin ILIKE :query OR category ILIKE :query"
      @plants = Plant.where(sql_query, query: "%#{params[:query]}%")
    else
      @plants = Plant.all
    end
  end

  def show
    @plant = Plant.find(params[:id])
  end
end
